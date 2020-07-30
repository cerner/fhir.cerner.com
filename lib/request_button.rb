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

  # The base URL for Cerner's sandbox server
  BASE_URL = 'https://fhir-%s.sandboxcerner.com/%s/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/%s'

  # The accept header for each API version
  HEADERS = {
    dstu2: 'application/json+fhir',
    r4: 'application/fhir+json'
  }.freeze

  private_constant :BASE_URL, :HEADERS

  # Public: Builds the HTML for the example and live response tabs using the provided parameters.
  #
  # @param prefix [String] the prefix for the base URL, used to select fhir-open, fhir-ehr, or fhir-myrecord
  # @param version [Symbol] the API version, open or closed
  # @param suffix [String] the suffix for the base URL
  # @param example_status [Number] the status for the example response header
  # @param example_json [Symbol] the json for the example response body
  #
  # @return [String] the HTML for the request button and the example response
  def self.get(prefix = nil, version, suffix, example_status, example_json)
    request_url = format(BASE_URL, prefix, version, suffix)
    accept_header = HEADERS[version]
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
