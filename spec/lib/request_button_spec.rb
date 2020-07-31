# frozen_string_literal: true

require 'request_button'

describe RequestButton do
  # Used to test the example and live response tabs based on a specific prefix, version, and accept header.
  #
  # Example:
  #   context "when prefix is 'prefix' and version is :version" do
  #     include_examples(
  #       'generates the example/live response HTML based on the provided params',
  #       'prefix',
  #       :version,
  #       version_header
  #     )
  #   end
  shared_examples 'generates the example/live response HTML based on the provided params' do |prefix, version, header|
    subject(:get) { RequestButton.get(prefix, version, suffix, example_status, example_json) }

    let(:base_url) { 'https://fhir-%s.sandboxcerner.com/%s/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/%s' }
    let(:expected_html) do
      <<~HTML.strip
        <div class="example-tabs">
          <ul id="#{random_id}">
            <li>
              <a class="active" href="#example-response" data-tab="example-response-tab"
                onclick="showTab(this, '#{random_id}'); return false;">
                Example Response
              </a>
            </li>
            <li>
              <a href="#live-response" data-tab="live-response-tab" data-url="#{format(base_url, prefix, version, suffix)}"
                data-header="#{header}" data-status="#{example_status}"
                onclick="showTab(this, '#{random_id}'); makeRequest(this); return false;">
                Live Response
              </a>
            </li>
          </ul>
        </div>
        <div data-id="#{random_id}" class="example-tab-content">
          <div data-content="example-response-tab">
            #{status}#{response}
          </div>
          <div data-content="live-response-tab" class="hide">
            <pre class="headers"><code> </code></pre>
            <pre class="body-response"><code class="language-javascript"></code></pre>
          </div>
        </div>
        #{disclaimer}
      HTML
    end
    let(:random_id) { 123 }
    let(:status) { '<pre class="headers">...</pre>' }
    let(:response) { '<pre class="body-response">...</pre>' }
    let(:disclaimer) { 'Disclaimer message' }

    before do
      allow(SecureRandom).to receive(:uuid).and_return(random_id)
      allow(RequestButton).to receive(:headers).with({status: example_status}).and_return(status)
      allow(RequestButton).to receive(:json).with(example_json).and_return(response)
      allow(RequestButton).to receive(:disclaimer).and_return(disclaimer)
    end

    context 'when the example response is generated' do
      after { subject }

      it 'calls #headers' do
        expect(RequestButton).to receive(:headers).with({status: example_status})
      end

      it 'calls #json' do
        expect(RequestButton).to receive(:json).with(example_json)
      end

      it 'calls #disclaimer' do
        expect(RequestButton).to receive(:disclaimer)
      end
    end

    it 'returns the expected HTML' do
      expect(subject).to eq(expected_html)
    end
  end

  describe '.get' do
    let(:suffix) { 'metadata' }
    let(:example_status) { 200 }
    let(:example_json) { :dstu2_open_metadata }

    context "when prefix is 'open' and version is :dstu2" do
      include_examples(
        'generates the example/live response HTML based on the provided params',
        'open',
        :dstu2,
        'application/json+fhir'
      )
    end

    context "when prefix is 'ehr' and version is :dstu2" do
      include_examples(
        'generates the example/live response HTML based on the provided params',
        'ehr',
        :dstu2,
        'application/json+fhir'
      )
    end

    context "when prefix is 'myrecord' and version is :dstu2" do
      include_examples(
        'generates the example/live response HTML based on the provided params',
        'myrecord',
        :dstu2,
        'application/json+fhir'
      )
    end

    context "when prefix is 'open' and version is :r4" do
      include_examples(
        'generates the example/live response HTML based on the provided params',
        'open',
        :r4,
        'application/fhir+json'
      )
    end

    context "when prefix is 'ehr' and version is :r4" do
      include_examples(
        'generates the example/live response HTML based on the provided params',
        'ehr',
        :r4,
        'application/fhir+json'
      )
    end

    context "when prefix is 'myrecord' and version is :r4" do
      include_examples(
        'generates the example/live response HTML based on the provided params',
        'myrecord',
        :r4,
        'application/fhir+json'
      )
    end
  end
end
