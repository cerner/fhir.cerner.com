# frozen_string_literal: true

require 'cgi'
require 'yajl/json_gem'

module Cerner
  module Resources
    module Helpers # rubocop:disable Metrics/ModuleLength

      STATUSES ||= {
        200 => '200 OK',
        201 => '201 Created',
        202 => '202 Accepted',
        204 => '204 No Content',
        205 => '205 Reset Content',
        301 => '301 Moved Permanently',
        302 => '302 Found',
        307 => '307 Temporary Redirect',
        304 => '304 Not Modified',
        401 => '401 Unauthorized',
        403 => '403 Forbidden',
        404 => '404 Not Found',
        405 => '405 Method not allowed',
        409 => '409 Conflict',
        422 => '422 Unprocessable Entity',
        500 => '500 Server Error',
        502 => '502 Bad Gateway'
      }.freeze

      def headers(status: nil, head: {}, fhir_json: false)
        lines = status ? ["Status: #{STATUSES[status]}"] : []

        head.each do |key, value|
          lines << case key
                   when :pagination
                     link_header(value)
                   when :Accept
                     "<a href=\"../../#media-types\">#{key}</a>: #{value}"
                   when :'Content-Type'
                     "<a href=\"../../#media-types\">#{key}</a>: #{value}"
                   when :Authorization
                     "<a href=\"../../#authorization\">#{key}</a>: #{value}"
                   else
                     "#{key}: #{value}"
                   end
        end

        if lines.empty?
          lines = fhir_json ? default_headers_r4 : default_headers
        end

        %(<pre class="headers"><code>#{lines * "\n"}</code></pre>\n)
      end

      def link_header(rels)
        formatted_rels = rels.map { |name, url| link_header_rel(name, url) }

        lines = [+"Link: #{formatted_rels.shift}"]
        while formatted_rels.any?
          lines.last << ','
          lines << "      #{formatted_rels.shift}"
        end

        lines
      end

      def link_header_rel(name, url)
        %Q(<#{url}>; rel="#{name}")
      end

      def default_headers
        [
          '<a href="../../#media-types">Accept</a>: application/json+fhir',
          '<a href="../../#authorization">Authorization</a>: &lt;OAuth2 Bearer Token>'
        ]
      end

      def default_headers_r4
        [
          '<a href="../../#media-types">Accept</a>: application/fhir+json',
          '<a href="../../#authorization">Authorization</a>: &lt;OAuth2 Bearer Token>'
        ]
      end

      def json(key)
        hash = get_resource(key)
        hash = yield hash if block_given?

        escaped_values_hash = deep_transform_values(hash)

        '<pre class="body-response"><code class="language-javascript">'\
        "#{JSON.pretty_generate(escaped_values_hash)}</code></pre>"
      end

      def html(key)
        html = get_resource(key)
        html = yield html if block_given?

        "<pre class=\"body-response\"><code class=\"language-markup\">#{html}</code></pre>"
      end

      def get_resource(key)
        case key
        when Hash
          h = {}
          key.each { |k, v| h[k.to_s] = v }
          h
        when Array
          key
        else Resources.const_get(key.to_s.upcase)
        end
      end

      def authorization_types(provider: false, patient: false, system: false)
        template = '<a href="/authorization/#requesting-authorization-on-behalf-of-a-%s" class="%s">%s</a>'

        auth_types = []

        auth_types << format(template, 'user', 'provider', 'Provider') if provider
        auth_types << format(template, 'user', 'patient', 'Patient') if patient
        auth_types << format(template, 'system', 'system', 'System') if system

        "<div class=\"auth-types\">#{auth_types.join(' | ')}</div>"
      end

      def data_currency
        "Developers need to account for data concurrency within the response. The FHIR specification states:\n\n"\
        '> The results of a search operation are only guaranteed to be current at the moment the operation is '\
        'executed. After the operation is executed, ongoing actions performed on the resources against which the '\
        'search was executed will render the results increasingly stale. The significance of this depends on the '\
        "nature of the search, and the kind of use that is being made of the results.\n\n"\
        '> This is particularly relevant when the server is returning the results in a series of pages. '\
        'It is at the discretion of the search engine of how to handle ongoing updates to the resources '\
        "while the search is proceeding.\n\n"\
        'When results are returned in a series of pages, you may see the same resource id on subsequent pages. '\
        'Developers need to take this situation into account by filtering by resource id and only return the latest '\
        'version of that resource id. Displaying duplicate resource ids or any other manipulation may misrepresent '\
        'the data thus impacting clinical decision support and patient safety.'
      end

      def disclaimer
        '<p>Note: The examples provided here are non-normative and replaying them in the public sandbox is not '\
        "guaranteed to yield the results shown on the site.</p>\n"
      end

      def deep_transform_values(value)
        return CGI.escape_html(value) if value.is_a?(String)
        return value unless value.is_a?(Hash)

        value.transform_values do |val|
          if val.is_a?(Array)
            val.map! { |array_value| deep_transform_values(array_value) }
          else
            deep_transform_values(val)
          end
        end
      end
    end
  end
end

include Cerner::Resources::Helpers # rubocop:disable Style/MixinUsage
