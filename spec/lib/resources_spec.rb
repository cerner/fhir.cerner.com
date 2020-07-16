# frozen_string_literal: true

require 'resources'

describe Cerner::Resources::Helpers do
  describe '#headers' do
    let(:expected_html) { "<pre class=\"headers\"><code>#{appended_html}</code></pre>\n" }

    let(:default_headers) { ['Default', 'Header'] }
    let(:default_headers_r4) { ['R4', 'Header'] }

    before do
      allow(Cerner::Resources::Helpers).to receive(:default_headers).and_return(default_headers)
      allow(Cerner::Resources::Helpers).to receive(:default_headers_r4).and_return(default_headers_r4)
    end

    context 'when the status, head, and fhir_json parameters are not provided' do
      subject(:headers) { Cerner::Resources::Helpers.headers }

      let(:appended_html) { default_headers.join("\n") }

      it 'calls #default_headers to retrieve the default request headers' do
        expect(Cerner::Resources::Helpers).to receive(:default_headers)

        headers
      end

      it 'returns the generated HTML with default headers' do
        expect(headers).to eq(expected_html)
      end
    end

    context 'when the status parameter is provided' do
      subject(:headers) { Cerner::Resources::Helpers.headers(status: status) }

      context 'when status is nil' do
        let(:status) { nil }

        let(:appended_html) { default_headers.join("\n") }

        it 'calls #default_headers to retrieve the default request headers' do
          expect(Cerner::Resources::Helpers).to receive(:default_headers)

          headers
        end

        it 'returns the generated HTML with default headers' do
          expect(headers).to eq(expected_html)
        end
      end

      context 'when status is not nil' do
        let(:status) { 200 }

        let(:appended_html) { 'Status: 200 OK' }

        it 'returns the generated HTML with the Status' do
          expect(headers).to eq(expected_html)
        end

        it 'does not add the default headers' do
          expect(Cerner::Resources::Helpers).to_not receive(:default_headers)
          expect(Cerner::Resources::Helpers).to_not receive(:default_headers_r4)

          headers
        end
      end
    end

    context 'when the head parameter is provided' do
      subject(:headers) { Cerner::Resources::Helpers.headers(head: head) }

      context 'when head is an empty hash' do
        let(:head) { {} }

        let(:appended_html) { default_headers.join("\n") }

        it 'calls #default_headers to retrieve the default request headers' do
          expect(Cerner::Resources::Helpers).to receive(:default_headers)

          headers
        end

        it 'returns the generated HTML with default headers' do
          expect(headers).to eq(expected_html)
        end
      end

      context 'when head is not an empty hash' do
        let(:head) { {key: 'value'} }

        context 'when the hash contains a pagination key value' do
          let(:head) { {pagination: 'value'} }
          let(:pagination_link_header) { ['Pagination'] }

          let(:appended_html) { 'Pagination' }

          before do
            allow(Cerner::Resources::Helpers).to receive(:link_header).with('value').and_return(pagination_link_header)
          end

          it 'calls #link_header with the pagination value' do
            expect(Cerner::Resources::Helpers).to receive(:link_header).with('value')

            headers
          end

          it 'returns the generated HTML with the pagination headers' do
            expect(headers).to eq(expected_html)
          end
        end

        context 'when the hash contains an Accept key value' do
          let(:head) { {Accept: 'value'} }

          let(:appended_html) { '<a href="../../#media-types">Accept</a>: value' }

          it 'returns the generated HTML with the Accept header' do
            expect(headers).to eq(expected_html)
          end
        end

        context "when the hash contains a 'Content-Type' key value" do
          let(:head) { {'Content-Type': 'value'} }

          let(:appended_html) { '<a href="../../#media-types">Content-Type</a>: value' }

          it 'returns the generated HTML with the Content-Type header' do
            expect(headers).to eq(expected_html)
          end
        end

        context 'when the hash contains an Authorization key value' do
          let(:head) { {Authorization: 'value'} }

          let(:appended_html) { '<a href="../../#authorization">Authorization</a>: value' }

          it 'returns the generated HTML with the Authorization header' do
            expect(headers).to eq(expected_html)
          end
        end

        context 'when the hash contains a custom key value' do
          let(:head) { {other: 'value'} }

          let(:appended_html) { 'other: value' }

          it 'returns the generated HTML with the custom header' do
            expect(headers).to eq(expected_html)
          end
        end

        context 'when multiple headers are provided' do
          let(:head) do
            {
              Accept: 'accept_value',
              'Content-Type': 'content_type_value',
              Authorization: 'authorization_value',
              other: 'value'
            }
          end

          let(:appended_html) do
            [
              '<a href="../../#media-types">Accept</a>: accept_value',
              '<a href="../../#media-types">Content-Type</a>: content_type_value',
              '<a href="../../#authorization">Authorization</a>: authorization_value',
              'other: value'
            ].join("\n")
          end

          it 'generates the appropriate HTML' do
            expect(headers).to eq(expected_html)
          end
        end

        it 'does not add the default headers' do
          expect(Cerner::Resources::Helpers).to_not receive(:default_headers)
          expect(Cerner::Resources::Helpers).to_not receive(:default_headers_r4)

          headers
        end
      end
    end

    context 'when only the fhir_json parameter is provided' do
      subject(:headers) { Cerner::Resources::Helpers.headers(fhir_json: fhir_json) }

      context 'when fhir_json is false' do
        let(:fhir_json) { false }

        let(:appended_html) { default_headers.join("\n") }

        it 'calls #default_headers to retrieve the default request headers' do
          expect(Cerner::Resources::Helpers).to receive(:default_headers)

          headers
        end

        it 'returns the generated HTML with default headers' do
          expect(headers).to eq(expected_html)
        end
      end

      context 'when fhir_json is true' do
        let(:fhir_json) { true }

        let(:appended_html) { default_headers_r4.join("\n") }

        it 'calls #default_headers_r4 to retrieve the default request headers' do
          expect(Cerner::Resources::Helpers).to receive(:default_headers_r4)

          headers
        end

        it 'returns the generated HTML with default headers' do
          expect(headers).to eq(expected_html)
        end
      end
    end

    context 'when the status and head parameters are provided' do
      subject(:headers) { Cerner::Resources::Helpers.headers(status: status, head: head) }

      let(:status) { 200 }
      let(:head) do
        {
          Accept: 'accept_value',
          'Content-Type': 'content_type_value',
          Authorization: 'authorization_value',
          other: 'value'
        }
      end

      let(:appended_html) do
        [
          'Status: 200 OK',
          '<a href="../../#media-types">Accept</a>: accept_value',
          '<a href="../../#media-types">Content-Type</a>: content_type_value',
          '<a href="../../#authorization">Authorization</a>: authorization_value',
          'other: value'
        ].join("\n")
      end

      it 'generates the appropriate HTML' do
        expect(headers).to eq(expected_html)
      end

      it 'does not add the default headers' do
        expect(Cerner::Resources::Helpers).to_not receive(:default_headers)
        expect(Cerner::Resources::Helpers).to_not receive(:default_headers_r4)

        headers
      end
    end
  end

  describe '#link_header' do
    subject(:link_header) { Cerner::Resources::Helpers.link_header(rels) }

    context 'when there are no links supplied' do
      let(:rels) { [] }

      it 'returns an array with an empty link' do
        expect(link_header).to eq(['Link: '])
      end
    end

    context 'when a link is supplied' do
      let(:rels) { {name => url} }
      let(:name) { 'Observation' }
      let(:url) { 'http://www.example.com/Observation' }
      let(:formatted_link) { "<#{url}>; rel=\"#{name}\"" }

      before do
        allow(Cerner::Resources::Helpers).to receive(:link_header_rel).with(name, url).and_return(formatted_link)
      end

      it 'calls #link_header_rel to format the link' do
        expect(Cerner::Resources::Helpers).to receive(:link_header_rel).with(name, url)

        link_header
      end

      it 'returns an array with the resource link' do
        expect(link_header).to eq(["Link: #{formatted_link}"])
      end
    end

    context 'when multiple links are supplied' do
      let(:rels) { {name_1 => url_1, name_2 => url_2} }
      let(:name_1) { 'Observation' }
      let(:url_1) { 'http://www.example.com/Observation' }
      let(:name_2) { 'CarePlan' }
      let(:url_2) { 'http://www.example.com/CarePlan' }
      let(:formatted_link_1) { "<#{url_1}>; rel=\"#{name_1}\"" }
      let(:formatted_link_2) { "<#{url_2}>; rel=\"#{name_2}\"" }

      before do
        allow(Cerner::Resources::Helpers).to receive(:link_header_rel).with(name_1, url_1).and_return(formatted_link_1)
        allow(Cerner::Resources::Helpers).to receive(:link_header_rel).with(name_2, url_2).and_return(formatted_link_2)
      end

      it 'calls #link_header_rel to format the links' do
        expect(Cerner::Resources::Helpers).to receive(:link_header_rel).with(name_1, url_1)
        expect(Cerner::Resources::Helpers).to receive(:link_header_rel).with(name_2, url_2)

        link_header
      end

      it 'returns an array with the resource link' do
        expect(link_header).to eq(["Link: #{formatted_link_1},", "      #{formatted_link_2}"])
      end
    end
  end

  describe '#link_header_rel' do
    subject(:link_header_rel) { Cerner::Resources::Helpers.link_header_rel(name, url) }

    let(:name) { 'Observation' }
    let(:url) { 'http://www.example.com' }

    it 'returns the relative header link' do
      expect(link_header_rel).to eq("<#{url}>; rel=\"#{name}\"")
    end
  end

  describe '#default_headers' do
    subject(:default_headers_dstu2) { Cerner::Resources::Helpers.default_headers }

    let(:accept_header) { '<a href="../../#media-types">Accept</a>: application/json+fhir' }
    let(:authorization_header) { '<a href="../../#authorization">Authorization</a>: &lt;OAuth2 Bearer Token>' }

    it 'returns the default DSTU2 request headers HTML' do
      expect(default_headers_dstu2).to eq([accept_header, authorization_header])
    end
  end

  describe '#default_headers_r4' do
    subject(:default_headers_r4) { Cerner::Resources::Helpers.default_headers_r4 }

    let(:accept_header) { '<a href="../../#media-types">Accept</a>: application/fhir+json' }
    let(:authorization_header) { '<a href="../../#authorization">Authorization</a>: &lt;OAuth2 Bearer Token>' }

    it 'returns the default R4 request headers HTML' do
      expect(default_headers_r4).to eq([accept_header, authorization_header])
    end
  end

  describe '#json' do
    subject(:json) { Cerner::Resources::Helpers.json(key) }

    let(:key) { double }
    let(:resource_json) { {resource: 'Observation'} }
    let(:expected_html) do
      '<pre class="body-response"><code class="language-javascript">'\
      "#{JSON.pretty_generate(expected_hash)}</code></pre>"
    end
    let(:expected_hash) { {} }

    before do
      allow(Cerner::Resources::Helpers).to receive(:get_resource).with(key).and_return(resource_json)
    end

    it 'calls #get_resource' do
      expect(Cerner::Resources::Helpers).to receive(:get_resource).with(key)

      json
    end

    context 'when a block is given' do
      let(:appended_json) { {field: 'value'} }
      let(:expected_hash) { {resource: 'Observation', field: 'value'} }

      it 'yields with the returned resource' do
        expect { |b| Cerner::Resources::Helpers.json(key, &b) }.to yield_with_args(resource_json)

        json
      end

      it 'returns the generated HTML and JSON with the resource and yield changes' do
        expect(Cerner::Resources::Helpers.json(key) { |json| json.merge(appended_json) }).to eq(expected_html)
      end
    end

    context 'when a block is not given' do
      let(:expected_hash) { resource_json }

      it 'returns the generated HTML and JSON with the resource' do
        expect(json).to eq(expected_html)
      end
    end
  end

  describe '#html' do
    subject(:html) { Cerner::Resources::Helpers.html(key) }

    let(:key) { double }
    let(:resource) { 'resource html' }
    let(:expected_html) do
      "<pre class=\"body-response\"><code class=\"language-markup\">#{generated_html}</code></pre>"
    end
    let(:generated_html) { nil }

    before do
      allow(Cerner::Resources::Helpers).to receive(:get_resource).with(key).and_return(resource)
    end

    it 'calls #get_resource' do
      expect(Cerner::Resources::Helpers).to receive(:get_resource).with(key)

      html
    end

    context 'when a block is given' do
      let(:appended_html) { 'appended html' }
      let(:generated_html) { "#{resource}#{appended_html}" }

      it 'yields with the returned resource' do
        expect { |b| Cerner::Resources::Helpers.html(key, &b) }.to yield_with_args(resource)

        html
      end

      it 'returns the generated HTML with the resource and yield changes' do
        expect(Cerner::Resources::Helpers.html(key) { |html| "#{html}#{appended_html}" }).to eq(expected_html)
      end
    end

    context 'when a block is not given' do
      let(:generated_html) { resource }

      it 'returns the generated HTML with the resource' do
        expect(html).to eq(expected_html)
      end
    end
  end

  describe '#get_resource' do
    subject(:get_resource) { Cerner::Resources::Helpers.get_resource(key) }

    context 'when key is a Hash' do
      let(:key) { {key: 'value'} }

      it 'stringifies the keys' do
        expect(get_resource).to eq('key' => 'value')
      end
    end

    context 'when key is an Array' do
      let(:key) { ['test'] }

      it 'returns the key' do
        expect(get_resource).to eq(key)
      end
    end

    context 'when key is not an Array or Hash' do
      let(:key) { 'test' }

      it 'retrieves the constant with the upcased key' do
        expect(Cerner::Resources).to receive(:const_get).with('TEST')

        get_resource
      end
    end
  end

  describe '#authorization_types' do
    let(:practitioner_link) do
      '<a href="/authorization/#requesting-authorization-on-behalf-of-a-user" class="practitioner">Practitioner</a>'
    end
    let(:patient_link) do
      '<a href="/authorization/#requesting-authorization-on-behalf-of-a-user" class="patient">Patient</a>'
    end
    let(:system_link) do
      '<a href="/authorization/#requesting-authorization-on-behalf-of-a-system" class="system">System</a>'
    end
    let(:divider) { ' | ' }

    let(:expected_div) { "<div class=\"auth-types\">#{returned_links}</div>" }

    context 'when the practitioner, patient, and system parameters are not provided' do
      subject(:authorization_types) { Cerner::Resources::Helpers.authorization_types }

      let(:returned_links) { practitioner_link }

      it 'returns the "Practitioner" authorization link' do
        expect(authorization_types).to eq(expected_div)
      end
    end

    context 'when the practitioner, patient, and system parameters are provided' do
      subject(:authorization_types) do
        Cerner::Resources::Helpers.authorization_types(practitioner: practitioner, patient: patient, system: system)
      end

      context 'when practitioner is false' do
        let(:practitioner) { false }

        context 'when patient is false' do
          let(:patient) { false }

          context 'when system is false' do
            let(:system) { false }
            let(:returned_links) { '' }

            it 'returns an empty div' do
              expect(authorization_types).to eq(expected_div)
            end
          end

          context 'when system is true' do
            let(:system) { true }

            let(:returned_links) { system_link }

            it 'returns the "System" authorization link' do
              expect(authorization_types).to eq(expected_div)
            end
          end
        end

        context 'when patient is true' do
          let(:patient) { true }

          context 'when system is false' do
            let(:system) { false }
            let(:returned_links) { patient_link }

            it 'returns the "Patient" authorization link' do
              expect(authorization_types).to eq(expected_div)
            end
          end

          context 'when system is true' do
            let(:system) { true }

            let(:returned_links) { "#{patient_link}#{divider}#{system_link}" }

            it 'returns the "Patient" and "System" authorization links with a divider' do
              expect(authorization_types).to eq(expected_div)
            end
          end
        end
      end

      context 'when practitioner is true' do
        let(:practitioner) { true }

        context 'when patient is false' do
          let(:patient) { false }

          context 'when system is false' do
            let(:system) { false }
            let(:returned_links) { practitioner_link }

            it 'returns the "Practitioner" authorization link' do
              expect(authorization_types).to eq(expected_div)
            end
          end

          context 'when system is true' do
            let(:system) { true }

            let(:returned_links) { "#{practitioner_link}#{divider}#{system_link}" }

            it 'returns the "Practitioner" and "System" authorization links with a divider' do
              expect(authorization_types).to eq(expected_div)
            end
          end
        end

        context 'when patient is true' do
          let(:patient) { true }

          context 'when system is false' do
            let(:system) { false }
            let(:returned_links) { "#{practitioner_link}#{divider}#{patient_link}" }

            it 'returns the "Provider" and "Patient" authorization links with a divider' do
              expect(authorization_types).to eq(expected_div)
            end
          end

          context 'when system is true' do
            let(:system) { true }

            let(:returned_links) { "#{practitioner_link}#{divider}#{patient_link}#{divider}#{system_link}" }

            it 'returns the "Provider", "Patient", and "System" authorization links with dividers' do
              expect(authorization_types).to eq(expected_div)
            end
          end
        end
      end
    end
  end

  describe '#data_currency' do
    subject(:data_currency) { Cerner::Resources::Helpers.data_currency }

    let(:blurb) do
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

    it 'returns the Data Conccurency blurb' do
      expect(data_currency).to eq(blurb)
    end
  end

  describe '#disclaimer' do
    subject(:disclaimer) { Cerner::Resources::Helpers.disclaimer }

    let(:blurb) do
      '<p>Note: The examples provided here are non-normative and replaying them in the public sandbox is not '\
      "guaranteed to yield the results shown on the site.</p>\n"
    end

    it 'returns the Disclaimer blurb' do
      expect(disclaimer).to eq(blurb)
    end
  end
end
