require 'erb'
require 'yaml'

def definition_table(content_key, version)
  DefinitionTableGenerator.new.field_definition_table(content_key, version)
end

class DefinitionTableGenerator

  def field_definition_table(content_key, version)

    schema = YAML.load(File.read("lib/resources/#{version.to_s}/#{content_key}.yaml"))

    # TODO: This concept needs to be reworked to allow multiple types for a given resource, or multiple versions of
    # the same type (e.g. Reference(Patient|Practitioner|RelatedPerson)). It would be nice if it also did not apply the
    # html formatting; that should be done elsewhere.
    types = YAML.load(File.read("lib/resources/#{version.to_s}/types.yaml"))

    # Storing in a variable so that it is accessible in the erb
    data = {fields: flatten_fields(fields: schema['fields'],
                                   base_url: schema['field_name_base_url'],
                                   types: types)}

    ERB.new(File.read('lib/field_definition_table.erb')).result(binding)
  end

  private

  def flatten_fields(fields:, base_url:, types:, parent: nil)
    results = []

    fields.each do |field|

      name = unless parent.nil?
               "#{parent}.#{field['name']}"
             else
               field['name']
             end

      type = types[field['type']] || field['type']

      url = field['url']
      url ||= "#{base_url}.#{name}" unless base_url.nil?

      results << {name: name,
                  type: type,
                  required: field['required'],
                  cardinality: field['cardinality'],
                  description: field['description'],
                  example: field['example'],
                  note: field['note'],
                  url: url}

      results << flatten_fields(fields: field['children'],
                                base_url: base_url,
                                types: types,
                                parent: name) unless field['children'].nil?
    end

    results.flatten

  end
end