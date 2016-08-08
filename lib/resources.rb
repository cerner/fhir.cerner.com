require 'yajl/json_gem'

module Cerner
  module Resources
    module Helpers

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
      }

      def headers(status, head = {})
        lines = ["Status: #{STATUSES[status]}"]
        head.each do |key, value|
          case key
            when :pagination
              lines << link_header(value)
            else
              lines << "#{key}: #{value}"
          end
        end

        %(<pre class="headers"><code>#{lines * "\n"}</code></pre>\n)
      end

      def link_header(rels)
        formatted_rels = rels.map { |name, url| link_header_rel(name, url) }

        lines = ["Link: #{formatted_rels.shift}"]
        while formatted_rels.any?
          lines.last << ","
          lines << "      #{formatted_rels.shift}"
        end

        lines
      end

      def link_header_rel(name, url)
        %Q{<#{url}>; rel="#{name}"}
      end

      def json(key)
        hash = get_resource(key)
        hash = yield hash if block_given?

        %(<pre class="body-response"><code class="language-javascript">) +
          JSON.pretty_generate(hash) + "</code></pre>"
      end

      def html(key)
        html = get_resource(key)
        html = yield html if block_given?

        "<pre class=\"body-response\"><code class=\"language-markup\">#{html}</code></pre>"
      end

      def get_resource(key)
        hash = case key
          when Hash
            h = {}
            key.each { |k, v| h[k.to_s] = v }
            h
          when Array
            key
          else Resources.const_get(key.to_s.upcase)
        end
      end

    end

  end
end

include Cerner::Resources::Helpers
