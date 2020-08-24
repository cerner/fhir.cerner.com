# frozen_string_literal: true

require 'erb'
require 'yaml'

def definition_table(content_key, action, version)
  DefinitionTableGenerator.new(version, action).field_definition_table(content_key)
end

def terminology_table(content_key, version)
  DefinitionTableGenerator.new(version, nil).terminology_table(content_key)
end

def patch_definition_table(content_key, version)
  DefinitionTableGenerator.new(version, :patch).patch_definition_table(content_key)
end

class DefinitionTableGenerator
  def initialize(version, action)
    @version = version.to_s
    @action = action
  end

  def field_definition_table(content_key)
    render_table(content_key, @action.to_s, 'field_definition_table')
  end

  def terminology_table(content_key)
    render_table(content_key, 'terminology', 'terminology_table')
  end

  def patch_definition_table(content_key)
    render_table(content_key, 'patch_operation', 'patch_definition_table')
  end

  private

  def render_table(content_key, table_name, erb_name, options = nil)
    @table_name = table_name

    schema = YAML.load(File.read("lib/resources/#{@version}/#{content_key}.yaml")) # rubocop:disable Security/YAMLLoad
    types = YAML.load(File.read("lib/resources/#{@version}/types.yaml")) # rubocop:disable Security/YAMLLoad

    fields = flatten_fields(
      fields: @action == :patch ? schema['operations'] : schema['fields'],
      base_url: schema['field_name_base_url'],
      types: types,
      erb_name: erb_name
    )

    activate_links(fields, types)

    data = {
      table_name: @table_name,
      options: options,
      name: schema['name'],
      fields: fields
    }

    ERB.new(File.read("lib/#{erb_name}.erb")).result(binding)
  end

  def flatten_fields(fields:, base_url:, types:, erb_name:, parent: nil) # rubocop:disable Metrics/MethodLength, Metrics/CyclomaticComplexity
    results = []

    return results if fields.nil? || fields.empty?

    fields.each do |field| # rubocop:disable Metrics/BlockLength
      puts "       - rendering: #{field['name']}"

      next unless supported_for_action?(field)

      field_name = if erb_name == 'terminology_table'
                     get_value(field['terminology_name']) || get_value(field['name'])
                   else
                     get_value(field['name'])
                   end

      name = if get_value(field['extension_child'])
               field_name
             else
               parent.nil? ? field_name : "#{parent}.#{field_name}"
             end

      field_type = get_value(field['type'])

      url = get_value(field['url'])
      url ||= "#{base_url}.#{name}" unless base_url.nil?

      values = {
        name: name,
        type: field_type,
        required: get_value(field['required']),
        description: get_value(field['description']),
        example: get_value(field['example']),
        example2: get_value(field['example2']),
        note: get_value(field['note']),
        binding: get_value(field['binding']),
        url: url
      }

      if @action == :patch
        values[:path] = get_value(field['path'])
        values[:operation] = get_value(field['operation'])
      end

      results << values

      unless field['children'].nil?
        results << flatten_fields(
          fields: field['children'],
          base_url: base_url,
          types: types,
          erb_name: erb_name,
          parent: name
        )
      end
    end

    results.flatten
  end

  # Retrieve the value for the current action in context, or the value if no action is defined.
  def get_value(value)
    return if value.kind_of?(Array) && @action.nil?
    return value if value.nil? || @action.nil?

    if value.kind_of?(Array)
      filter_action = value.find { |v| !v[@action.to_s].nil? }
      return filter_action[@action.to_s] unless filter_action.nil?

      return value.find { |v| !v.kind_of?(Hash) }
    end

    value
  end

  # Determine whether the field is supported for the current action in context.
  def supported_for_action?(field)
    return true if field['action'].nil? || @action.nil?
    return field['action'].include?(@action.to_s) if field['action'].kind_of?(Array)

    field['action'] == @action.to_s
  end

  # Replace the embedded link tags with active hyperlinks.
  #
  # Note that link replacement uses simple text replacement and assumes generated links are correct.
  def activate_links(fields, types)
    fields.each do |field|
      field[:type] = activate_field_links(field[:type], types, auto_link: true) if field[:type]
      field[:note] = activate_field_links(field[:note], types) if field[:note]
      field[:description] = activate_field_links(field[:description], types) if field[:description]
    end
  end

  # Searches a value field and replaces linkable strings with the appropriate hyperlink based on the types
  # defined in the types variable.
  #
  # Substrings enclosed in `` will be replaced with links indicated in types if
  # available, or simply formatted in a <code> block if not. Substr
  #
  # Words enclosed in [] will be replaced with a link to a local anchor. The anchor name is assumed to be the
  # same as the enclosed word
  #
  # If auto_link is true, the string will be split and any word, enclosed or not, will be replaced the same as values
  # enclosed in ``. In general, it is best not to use auto_link on strings with either `` or [] enclosures.
  def activate_field_links(value, types, auto_link: false)
    return if value.nil?

    # TODO: It would be nice to enhance these to be more wiki style and allow providing both a display value and a
    # link value. Something like [some display|http://go.somewhere.else]. If no link value is provided, then assume
    # the display references a local anchor
    #
    # Something similar could be done for `` and maybe allow linking to a specified type, but aliasing the text.
    #
    # The regex would need to be updated to allow additional character sequences.

    # Activate type links
    results = value.gsub(/`((\w|\s|\d|\.)+)`/) do |match|
      tag = match.tr('\`', '')
      next "<a target=\"_blank\" href=\"#{types[tag]}\"><code>#{tag}</code></a>" if types[tag]

      "<code>#{tag}</code>"
    end

    # If auto_link is true, activate type strings which have not been explicitly linked.
    if auto_link
      results = results.gsub(/(\w+)/) do |match|
        next "<a target=\"_blank\" href=\"#{types[match]}\"><code>#{match}</code></a>" if types[match]

        "<code>#{match}</code>"
      end
    end

    # Activate local links
    results = results.gsub(/\[(\w+)\]/) do |match|
      tag = match.tr('[]', '')
      "<a href=\"##{@table_name}-#{tag}\">#{tag}</a>"
    end

    results
  end
end
