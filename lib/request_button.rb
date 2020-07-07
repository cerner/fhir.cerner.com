# frozen_string_literal: true

require 'securerandom'

class RequestButton
  # The open and closed URLs for each API version
  URLS = {
    dstu2: 'https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/',
    dstu2_closed: 'https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/',
    r4: 'https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/',
    r4_closed: 'https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/'
  }.freeze

  # The accept header for each API version
  HEADERS = {
    dstu2: 'application/json+fhir',
    r4: 'application/fhir+json'
  }.freeze

  private_constant :URLS, :HEADERS

  # @api public
  # Public: Builds the HTML for the example and live response tabs using the provided parameters.
  #
  # @param version [Symbol] the API version, open or closed
  # @param enpoint [String] the endpoint of the request in the example
  # @param example_status [Number] the status for the example response header
  # @param example_json [Symbol] the json for the example response body
  #
  # @return [String] the HTML for the request button and the example response
  def self.get(version, endpoint, example_status, example_json)
    if URLS.key?(version)
      request_url = URLS[version] + endpoint
      accept_header = version.to_s.start_with?('dstu2') ? HEADERS[:dstu2] : HEADERS[:r4]
      random_id = SecureRandom.uuid

      "<div class=\"example-tabs\"><ul id=\"#{random_id}\"><li><a class=\"active\" href=\"#example-response\" "\
      "data-tab=\"example-response-tab\" onclick=\"showResponse(this, '#{random_id}')\">Example Response</a></li>"\
      "<li><a href=\"#live-response\" data-tab=\"live-response-tab\" data-url=\"#{request_url}\" "\
      "data-header=\"#{accept_header}\" data-status=\"#{example_status}\" "\
      "onclick=\"showResponse(this, '#{random_id}')\">Live Response</a></li></ul></div>"\
      "<div data-id=\"#{random_id}\" class=\"example-tab-content\">"\
      "<div>#{headers(status: example_status)}#{json(example_json)}</div>"\
      '<div class="hide"><pre class="headers"><code> </code></pre><pre class="body-response">'\
      "<code class=\"language-javascript\"></code></pre></div></div>#{disclaimer}"
    end
  end
end
