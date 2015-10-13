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

    # DSTU 1 JSON

    DSTU1_ALLERGY_INTOLERANCE_BUNDLE ||= {
      "resourceType"=>"Bundle",
      "title"=>"Search results for resource type AllergyIntolerance",
      "id"=>"c295606f-2ed2-4fc8-8d21-6c9676fdde92",
      "link"=>[{"rel"=>"self",
                "href"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance?subject:Patient=3602355"}],
      "updated"=>"2015-04-02T17:05:14.054+00:00",
      "author"=>[{"name"=>"Cerner Corporation"}],
      "entry"=>[{"title"=>"AllergyIntolerance Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance/3276869",
                 "content"=>{"resourceType"=>"AllergyIntolerance",
                             "sensitivityType"=>"intolerance",
                             "recordedDate"=>"2015-03-26T17:06:21.000Z",
                             "status"=>"confirmed",
                             "subject"=>{"reference"=>"Patient/3602355"},
                             "substance"=>{"display"=>"Dust"}}},
                {"title"=>"AllergyIntolerance Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance/3276865",
                 "content"=>{"resourceType"=>"AllergyIntolerance",
                             "sensitivityType"=>"intolerance",
                             "recordedDate"=>"2015-03-26T17:05:24.000Z",
                             "status"=>"confirmed",
                             "subject"=>{"reference"=>"Patient/3602355"},
                             "substance"=>{"display"=>"Peanuts"}}}]
    }

    DSTU1_CONDITION_BUNDLE ||= {
      "resourceType"=>"Bundle",
      "title"=>"Search results for resource type Condition",
      "id"=>"d2dd09d5-9de4-4fa6-937c-cf1d928011df",
      "link"=>[{"rel"=>"self",
                "href"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Condition?subject:Patient=3602355"}],
      "updated"=>"2015-04-02T17:20:27.848+00:00",
      "author"=>[{"name"=>"Cerner Corporation"}],
      "entry"=>[{"title"=>"Condition Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Condition/%2Ftenant%3Ad075cf8b-3261-481d-97e5-ba6c48d3b41f_0%2Fperson%3A3602355%2Fclinicalfacts.condition.type%3ACODIFIED%2Fid%3A17697298",
                 "content"=>{"resourceType"=>"Condition",
                             "contained"=>[{"resourceType"=>"Practitioner",
                                            "id"=>"practitioner1293205",
                                            "name"=>{"text"=>"Norton RN, Rona"},
                                            "organization"=>{"display"=>"Cerner Medical Center"}}],
                             "subject"=>{"reference"=>"Patient/3602355"},
                             "asserter"=>{"reference"=>"#practitioner1293205",
                                          "display"=>"Norton RN, Rona"},
                             "code"=>{"coding"=>[{"system"=>"http://hl7.org/fhir/sid/icd-9",
                                                  "code"=>"401.1",
                                                  "display"=>"Hypertension, benign essential, goal below 140/90"}],
                                      "text"=>"Hypertension, benign essential, goal below 140/90"},
                             "status"=>"confirmed"}},
                {"title"=>"Condition Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Condition/%2Ftenant%3Ad075cf8b-3261-481d-97e5-ba6c48d3b41f_0%2Fperson%3A3602355%2Fclinicalfacts.condition.type%3ACODIFIED%2Fid%3A14626798",
                 "content"=>{"resourceType"=>"Condition",
                             "contained"=>[{"resourceType"=>"Practitioner",
                                            "id"=>"practitioner1293205",
                                            "name"=>{"text"=>"Norton RN, Rona"},
                                            "organization"=>{"display"=>"Cerner Medical Center"}}],
                             "subject"=>{"reference"=>"Patient/3602355"},
                             "asserter"=>{"reference"=>"#practitioner1293205",
                                          "display"=>"Norton RN, Rona"},
                             "code"=>{"coding"=>[{"system"=>"http://hl7.org/fhir/sid/icd-9",
                                                  "code"=>"714.0",
                                                  "display"=>"Rheumatoid arthritis"}],
                                      "text"=>"Rheumatoid arthritis"},
                             "status"=>"confirmed"}}]
    }

    DSTU1_DIAGNOSTIC_REPORT_BUNDLE ||= {
      "resourceType"=>"Bundle",
      "title"=>"Search results for resource type DiagnosticReport",
      "id"=>"63cb5365-149c-4851-897e-b4b4c54a1512",
      "link"=>[{"rel"=>"self",
                "href"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport?subject:Patient=3602356"}],
      "updated"=>"2015-04-03T16:47:27.614+00:00",
      "author"=>[{"name"=>"Cerner Corporation"}],
      "entry"=>[{"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117766",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"30745-4"},
                                                 {"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"XR Chest 2 Views"},
                             "status"=>"final",
                             "issued"=>"2013-09-15T19:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:Cough;Shortness of breath  (SOB)     ReportHistory: left sided rib pain, lower left anterior and posterior     Technique: PA and lateral views of the chest were performed. Comparison is made to a prior study dated 5/30/07.     Findings: The lungs are clear and well expanded. No acute infiltrate, pleural effusion, or pneumothorax is identified. There is normal vascularity. The cardiovascular silhouette is within normal limits. Visualized bones and soft tissues are unremarkable. No displaced rib fractures are seen.     Impression: There is no evidence of acute cardiopulmonary disease.   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:35 pm  Technologist"}},
                {"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117663",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"XR Chest 1 View"},
                             "status"=>"final",
                             "issued"=>"2013-03-07T20:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:Chest pain     ReportHistory: Chest pain.     Findings: An AP supine view of the chest was acquired and compared with prior PA erect examination dated 9/1/10. The cardiac silhouette and pulmonary vascular pattern are within normal limits for the supine position. The lungs are clear of infiltrates. No displaced rib fractures are identified. There is subluxation of the right humeral head which is unchanged since the prior exam.     Impression: No pulmonary infiltrates or congestive failure.   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:17 pm Transcribed by: MRW Technologist"}},
                {"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117703",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"XR Foot Complete Left"},
                             "status"=>"final",
                             "issued"=>"2013-06-03T19:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:left foot swelling     ReportHistory: Cellulitis left leg, rheumatoid arthritis, rule out gas producing organ     Findings: A PA PA oblique and lateral views show soft tissue generally over the foot, predominantly dorsally. There is mild generalized demineralization of bony parts. No other specific abnormalities are noted.     Impression: I do not identify radiopaque foreign body or gas within the soft tissues.\"   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:24 pm  Technologist"}},
                {"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117681",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"XR Wrist Complete Left"},
                             "status"=>"final",
                             "issued"=>"2013-09-12T19:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:Follow up fracture     ReportHistory: Indication is followup fracture.     Findings: Two views are compared to 06/15/12. A distal left radial fracture site shows continued healing in otherwise unchanged appearance and alignment from the September examination.     Impression: Negative wrist   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:20 pm  Technologist"}},
                {"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117734",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"XR Hand Complete Left"},
                             "status"=>"final",
                             "issued"=>"2013-07-19T19:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:post injury eval     ReportHistory: Post injury evaluation.     Technique: Three views submitted.     Findings: Osseous structures appear intact and normally aligned.     Impression: Negative hand   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:28 pm  Technologist"}},
                {"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117905",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"XR Foot Complete Left"},
                             "status"=>"final",
                             "issued"=>"2013-05-22T19:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:left foot pain     ReportHistory: left foot pain.     Findings: Examination of the left foot shows a spur on the inferior pole of the calcaneus. There is no evidence of fracture or bone disease.     Impression: Spur formation left calcaneus.   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:59 pm  Technologist"}},
                {"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117623",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"XR Foot Complete Left"},
                             "status"=>"final",
                             "issued"=>"2013-03-07T20:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:foot pain     ReportHistory: Pain.     Findings: Interval appearance is unchanged. There is a stable plantar spur. Midfoot degenerative changes are associated with a pes planus alignment.     Impression:Forefoot unremarkable and no acute pathology is seen.\"   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:17 pm Transcribed by: MRW Technologist"}},
                {"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117779",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"XR Hand 2 Views Bilateral"},
                             "status"=>"final",
                             "issued"=>"2013-12-27T20:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:pain in both hands     ReportHISTORY: Female pain in both hands/history of auto immune disease for few years.     TECHNIQUE: 2 views of the hands are submitted for evaluation.     COMPARISON: None     FINDINGS: RIGHT: Irregular joint space narrowing around the DIP joint of the second and third digit, with central erosion and peripheral bony proliferation, most indicative of erosive osteoarthritis. Osteoarthritic changes with subchondral cysts are also noted at the PIP joint of the third, fourth and fifth digits, the triscaphe joint, the first through fourth MCP joints, and the interphalangeal joint of the thumb. Osseous structures are osteopenic. LEFT: Irregular joint space narrowing around PIP of the second digit and to a lesser extent of the fifth digit with central erosion and peripheral bony proliferation, most indicative of erosive osteoarthritis. Osteoarthritic changes with subchondral cyst also noted at the PIP of the fifth digit, triscaphe joint, first, third and fourth MCP joints, and the interphalangeal joint of the thumb. Osseous structures are osteopenic. Cystic changes at the proximal ulnar aspect of the lunate may be from ulnar abutment.     IMPRESSION: Bilateral erosive osteoarthritis (R&gt;L). Possible left ulnar abutment syndrome   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:43 pm  Technologist"}},
                {"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117749",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"30745-4"},
                                                 {"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"XR Chest 2 Views"},
                             "status"=>"final",
                             "issued"=>"2013-06-10T19:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:left side pain;Shortness of breath  (SOB)     ReportHistory: left sided rib pain, lower left anterior and posterior     Technique: PA and lateral views of the chest were performed. Comparison is made to a prior study dated 5/30/07.     Findings: The lungs are clear and well expanded. No acute infiltrate, pleural effusion, or pneumothorax is identified. There is normal vascularity. The cardiovascular silhouette is within normal limits. Visualized bones and soft tissues are unremarkable. No displaced rib fractures are seen.     Impression: There is no evidence of acute cardiopulmonary disease.\"   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:33 pm  Technologist"}},
                {"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117788",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"XR Hand 2 Views Bilateral"},
                             "status"=>"final",
                             "issued"=>"2014-03-11T19:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:pain     ReportHistory: Bilateral hand pain.     Findings: Examination of the hands and wrists shows advanced arthritic changes of the distal interphalangeal joints of these second third fourth and fifth fingers and the interphalangeal joint of the first finger. The wrists appear normal. Impression: Advanced arthritic changes both hands.     Impression: Negative wrists.   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:46 pm  Technologist"}},
                {"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117861",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"BD Bone Density DEXA Body Composition"},
                             "status"=>"final",
                             "issued"=>"2014-05-28T19:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:Eval     ReportHistory: Advanced arthritic changes.     Findings: A spine bone density value in the range 80-120 mg/cm3 is indicative of osteopenia. The risk for fracture goes up as the bone density goes down, and some, but not all, individuals with BMD in the lower end of this range will have vertebral fractures.     Impression: Level(s) normal.   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:52 pm  Technologist"}},
                {"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117694",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"30745-4"},
                                                 {"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"XR Chest 2 Views"},
                             "status"=>"final",
                             "issued"=>"2014-01-19T20:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:shortness of breath;Shortness of breath  (SOB)     ReportHistory:shortness of breath with exertion     Technique: CHEST 2 VIEWS AP OR PA AND LATERAL -- 05/10/12 PA and lateral views of the chest were acquired and compared with the prior examination dated 10/16/10.     Findings: The cardiomediastinal silhouette is within normal limits of size and configuration. The pulmonary vascular pattern is normal. The lungs are clear infiltrates. There are no pleural effusions. Degenerative changes of the thoracic spine are stable.     Impression: No active cardiopulmonary disease.\"   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:23 pm  Technologist"}},
                {"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117870",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"XR Foot 2 Views Bilateral"},
                             "status"=>"final",
                             "issued"=>"2014-05-19T19:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:pain     AddendumThere are spurs on the inferior pole of the calcanei bilaterally.   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:56 pm  Technologist     ReportHistory: Bilateral Foot pain after fall.     Findings: Examination of the feet shows no evidence of fracture or bone disease.     Impression: Negative feet.   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:54 pm  Technologist"}},
                {"title"=>"DiagnosticReport Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6117718",
                 "content"=>{"resourceType"=>"DiagnosticReport",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"169074008"}],
                                      "text"=>"XR Hand 2 Views Right | XR Wrist 2 Views Right"},
                             "status"=>"final",
                             "issued"=>"2013-07-19T19:40:34.000Z",
                             "subject"=>{"reference"=>"Patient/3602356"},
                             "conclusion"=>"Reason for exam:rt hand swelling      Reason for exam:rt hand swelling     ReportHistory: RIGHT HAND SWELLING ?? RA CHANGES, ? OA ?? CPPD? OTHER. OTHER MALAISE AND FATIGUE . PAIN IN JOINT INVOLVING MULTIPLE SITES. Muscle weakness (generalized)     Technique: Two views of the right hand are submitted for interpretation. COMPARISON: 9/5/09     Findings: Posttraumatic changes are again noted involving the distal radius with radiocarpal joint space narrowing. There is mild sclerosis and joint space narrowing at the first carpometacarpal joint. Similar changes are present at the first MCP. There is mild joint space narrowing of the DIP joints without erosions. No erosive changes can be identified within the limits of the study. No significant soft tissue calcifications are identified.     Impression: 1. Posttraumatic changes involving the distal radius. 2. Osteoarthritic changes as detailed above.\"   Signature Line:***** Final *****    Signed by:  Wilson MD, Mark R Signed (Electronic Signature):  03/27/2015 3:27 pm  Technologist"}}]
    }

    DSTU1_ENCOUNTER ||= {
      "resourceType"=>"Encounter",
      "identifier"=>[{"use"=>"usual",
                      "label"=>"FIN NBR",
                      "system"=>"http://cerner.com/fhir/identifier/FINNBR",
                      "value"=>"000022371"}],
      "subject"=>{"reference"=>"Patient/3602355"},
      "participant"=>[{"type"=>[{"coding"=>[{"system"=>"http://hl7.org/fhir/v3/ParticipationType",
                                             "code"=>"ATND",
                                             "display"=>"attender"}],
                                 "text"=>"attender"}],
                       "individual"=>{"display"=>"Knight MD, Wayne"}}],
      "period"=>{"start"=>"2015-03-12T15:30:00.000Z",
                 "end"=>"2015-03-13T04:59:59.000Z"},
      "location"=>[{"location"=>{"display"=>"BW IR"},
                    "period"=>{"start"=>"2015-03-12T15:30:00.000Z",
                               "end"=>"2015-03-13T04:59:59.000Z"}}]
    }

    DSTU1_ENCOUNTER_BUNDLE ||= {
      "resourceType"=>"Bundle",
      "title"=>"Search results for resource type Encounter",
      "id"=>"796e55e8-ed84-4480-ba05-7de545c86e02",
      "link"=>[{"rel"=>"self",
                "href"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Encounter?subject:Patient=3602355"}],
      "updated"=>"2015-04-02T17:21:25.255+00:00",
      "author"=>[{"name"=>"Cerner Corporation"}],
      "entry"=>[{"title"=>"Encounter Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Encounter/3524878",
                 "content"=>DSTU1_ENCOUNTER}]
    }

    DSTU1_IMMUNIZATION_BUNDLE ||= {
      "resourceType"=>"Bundle",
      "title"=>"Search results for resource type Immunization",
      "id"=>"27780a25-18ba-4fd8-9c18-e3beb215d2c2",
      "link"=>[{"rel"=>"self",
                "href"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Immunization?subject:Patient=3602356"}],
      "updated"=>"2015-04-02T17:16:33.685+00:00",
      "author"=>[{"name"=>"Cerner Corporation"}],
      "entry"=>[{"title"=>"Immunization Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Immunization/6109433",
                 "content"=>{"resourceType"=>"Immunization",
                             "date"=>"2014-03-11T20:00:00.000Z",
                             "vaccineType"=>{"coding"=>[{"system"=>"http://hl7.org/fhir/v3/VaccineType",
                                                         "code"=>"88"}],
                                             "text"=>"Fluzone Intradermal 2013-2014"},
                             "refusedIndicator"=>false,
                             "reported"=>false,
                             "subject"=>{"reference"=>"Patient/3602356"}}}]
    }

    DSTU1_MEDICATION_PRESCRIPTION_BUNDLE ||= {
      "resourceType"=>"Bundle",
      "title"=>"Search results for resource type MedicationPrescription",
      "id"=>"2547d0ae-86f2-4efc-b66a-117ed3693f08",
      "link"=>[{"rel"=>"self",
                "href"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationPrescription?patient=3602355"}],
      "updated"=>"2015-04-02T17:25:00.506+00:00",
      "author"=>[{"name"=>"Cerner Corporation"}],
      "entry"=>[{"title"=>"MedicationPrescription Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationPrescription/24218117",
                 "content"=>{"resourceType"=>"MedicationPrescription",
                             "contained"=>[{"resourceType"=>"Medication",
                                            "id"=>"2763106",
                                            "code"=>{"coding"=>[{"system"=>"http://www.nlm.nih.gov/research/umls/rxnorm",
                                                                 "code"=>"105586",
                                                                 "display"=>"Methotrexate 10 MG Oral Tablet"}],
                                                     "text"=>"methotrexate 10 mg oral tablet"},
                                            "name"=>"methotrexate 10 mg oral tablet"}],
                             "status"=>"active",
                             "patient"=>{"reference"=>"Patient/3602355"},
                             "prescriber"=>{"reference"=>"Practitioner/3602366",
                                            "display"=>"Knight MD, Wayne"},
                             "medication"=>{"reference"=>"#2763106",
                                            "display"=>"methotrexate 10 mg oral tablet"},
                             "dosageInstruction"=>[{"text"=>"2 tabs, Oral, qWeek, 90 tabs, 0 Refill(s)",
                                                    "timingPeriod"=>{"start"=>"2014-05-01T19:00:00.000Z"}}],
                             "dispense"=>{"medication"=>{"reference"=>"#2763106",
                                                         "display"=>"methotrexate 10 mg oral tablet"},
                                          "quantity"=>{"value"=>"90",
                                                       "units"=>"tabs"}}}},
                {"title"=>"MedicationPrescription Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationPrescription/24218151",
                 "content"=>{"resourceType"=>"MedicationPrescription",
                             "contained"=>[{"resourceType"=>"Medication",
                                            "id"=>"2767469",
                                            "code"=>{"coding"=>[{"system"=>"http://www.nlm.nih.gov/research/umls/rxnorm",
                                                                 "code"=>"312617",
                                                                 "display"=>"Prednisone 5 MG Oral Tablet"}],
                                                     "text"=>"predniSONE 5 mg oral tablet"},
                                            "name"=>"predniSONE 5 mg oral tablet"}],
                             "status"=>"active",
                             "patient"=>{"reference"=>"Patient/3602355"},
                             "prescriber"=>{"reference"=>"Practitioner/3602366",
                                            "display"=>"Knight MD, Wayne"},
                             "medication"=>{"reference"=>"#2767469",
                                            "display"=>"predniSONE 5 mg oral tablet"},
                             "dosageInstruction"=>[{"text"=>"1 tabs, Oral, Daily, 30 tabs, 0 Refill(s)",
                                                    "timingPeriod"=>{"start"=>"2013-03-01T15:00:00.000Z"}}],
                             "dispense"=>{"medication"=>{"reference"=>"#2767469",
                                                         "display"=>"predniSONE 5 mg oral tablet"},
                                          "quantity"=>{"value"=>"30",
                                                       "units"=>"tabs"}}}},
                {"title"=>"MedicationPrescription Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationPrescription/24218187",
                 "content"=>{"resourceType"=>"MedicationPrescription",
                             "contained"=>[{"resourceType"=>"Medication",
                                            "id"=>"2762241",
                                            "code"=>{"coding"=>[{"system"=>"http://www.nlm.nih.gov/research/umls/rxnorm",
                                                                 "code"=>"314076",
                                                                 "display"=>"Lisinopril 10 MG Oral Tablet"}],
                                                     "text"=>"lisinopril 10 mg oral tablet"},
                                            "name"=>"lisinopril 10 mg oral tablet"}],
                             "status"=>"active",
                             "patient"=>{"reference"=>"Patient/3602355"},
                             "prescriber"=>{"reference"=>"Practitioner/3602366",
                                            "display"=>"Knight MD, Wayne"},
                             "medication"=>{"reference"=>"#2762241",
                                            "display"=>"lisinopril 10 mg oral tablet"},
                             "dosageInstruction"=>[{"text"=>"1 tabs, Oral, Daily, 60 tabs",
                                                    "timingPeriod"=>{"start"=>"2013-06-07T14:00:00.000Z"}}],
                             "dispense"=>{"medication"=>{"reference"=>"#2762241",
                                                         "display"=>"lisinopril 10 mg oral tablet"},
                                          "quantity"=>{"value"=>"60",
                                                       "units"=>"tabs"}}}}]
    }

    DSTU1_OPEN_METADATA ||= {"resourceType"=>"Conformance",
                  "text"=>{"status"=>"generated",
                           "div"=>"Generated Conformance Statement"},
                  "identifier"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Conformance",
                  "name"=>"SMART on FHIR Conformance Statement",
                  "publisher"=>"Cerner",
                  "description"=>"Describes capabilities of this server",
                  "status"=>"draft",
                  "date"=>"2015-04-02T16:02:06.144+00:00",
                  "fhirVersion"=>"0.0.82",
                  "acceptUnknown"=>false,
                  "format"=>["json"],
                  "rest"=>[{"mode"=>"server",
                            "documentation"=>"All the functionality defined in FHIR",
                            "security"=>{"cors"=>true}}]}

    DSTU1_AUTH_METADATA ||= {
      "resourceType"=>"Conformance",
      "text"=>{"status"=>"generated",
               "div"=>"Generated Conformance Statement"},
      "identifier"=>"https://fhir.sandboxcernerpowerchart.com/fhir/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Conformance",
      "name"=>"SMART on FHIR Conformance Statement",
      "publisher"=>"Cerner",
      "description"=>"Describes capabilities of this server",
      "status"=>"draft",
      "date"=>"2015-04-03T16:37:34.559+00:00",
      "fhirVersion"=>"0.0.82",
      "acceptUnknown"=>false,
      "format"=>["json"],
      "rest"=>[{"mode"=>"server",
                "documentation"=>"All the functionality defined in FHIR",
                "security"=>{"extension"=>[{"url"=>"http://fhir-registry.smarthealthit.org/Profile/oauth-uris#token",
                                            "valueUri"=>"https://fhir.sandboxcernerpowerchart.com/oauth2/token"},
                                           {"url"=>"http://fhir-registry.smarthealthit.org/Profile/oauth-uris#authorize",
                                            "valueUri"=>"https://fhir.sandboxcernerpowerchart.com/oauth2/authorize"}],
                             "cors"=>true,
                             "service"=>[{"coding"=>[{"system"=>"http://hl7.org/fhir/vs/restful-security-service",
                                                      "code"=>"OAuth2"}],
                                          "text"=>"OAuth version 2"}],
                             "description"=>"SMART on FHIR uses OAuth2 for authorization"}}]
    }

    DSTU1_OBSERVATION_BUNDLE ||= {
      "resourceType"=>"Bundle",
      "title"=>"Search results for resource type Observation",
      "id"=>"15262c30-ec5a-4ab5-a2ac-d5d879d1f180",
      "link"=>[{"rel"=>"self",
                "href"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation?subject:Patient=3602355"}],
      "updated"=>"2015-04-02T17:30:45.739+00:00",
      "author"=>[{"name"=>"Cerner Corporation"}],
      "entry"=>[{"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6116990",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"35591-7"}],
                                      "text"=>"Estimated Creatinine Clearance"},
                             "valueQuantity"=>{"value"=>37.83,
                                               "units"=>"mL/min",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"mL/min"},
                             "appliesDateTime"=>"2015-03-27T19:08:15.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6116935",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"35591-7"}],
                                      "text"=>"Estimated Creatinine Clearance"},
                             "valueQuantity"=>{"value"=>30.26,
                                               "units"=>"mL/min",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"mL/min"},
                             "appliesDateTime"=>"2015-03-27T19:06:35.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6116966",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"2160-0"}],
                                      "text"=>"Creatinine Lvl"},
                             "valueQuantity"=>{"value"=>1.2,
                                               "units"=>"mg/dL",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"mg/dL"},
                             "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6116978",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"1751-7"}],
                                      "text"=>"Albumin Lvl"},
                             "valueQuantity"=>{"value"=>4.1,
                                               "units"=>"g/dL",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"g/dL"},
                             "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6116982",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"6768-6"}],
                                      "text"=>"Alk Phos"},
                             "valueQuantity"=>{"value"=>91.0,
                                               "units"=>"IU/L",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"[iU]/d"},
                             "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6116974",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"1920-8"}],
                                      "text"=>"AST"},
                             "valueQuantity"=>{"value"=>33.0,
                                               "units"=>"unit/L"},
                             "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6116970",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"1742-6"}],
                                      "text"=>"ALT"},
                             "valueQuantity"=>{"value"=>26.0,
                                               "units"=>"unit/L"},
                             "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6117004",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"48642-3"}],
                                      "text"=>"eGFR Non-AA"},
                             "valueQuantity"=>{"value"=>47.0,
                                               "units"=>"mL/min/1.73 m2"},
                             "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6117002",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"48643-1"}],
                                      "text"=>"eGFR AA"},
                             "valueQuantity"=>{"value"=>57.0,
                                               "units"=>"mL/min/1.73 m2"},
                             "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6166221",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"6690-2"}],
                                      "text"=>"WBC"},
                             "valueQuantity"=>{"value"=>6.6,
                                               "units"=>"x10^3/mcL"},
                             "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6116986",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"718-7"}],
                                      "text"=>"Hgb"},
                             "valueQuantity"=>{"value"=>11.3,
                                               "units"=>"%",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"%"},
                             "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6116988",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"4544-3"}],
                                      "text"=>"Hct"},
                             "valueQuantity"=>{"value"=>33.9,
                                               "units"=>"%",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"%"},
                             "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6116998",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"777-3"}],
                                      "text"=>"Platelet"},
                             "valueQuantity"=>{"value"=>121.0,
                                               "units"=>"x10^3/mcL"},
                             "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6165413",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"6690-2"}],
                                      "text"=>"WBC"},
                             "valueQuantity"=>{"value"=>4.9,
                                               "units"=>"x10^3/mcL"},
                             "appliesDateTime"=>"2015-03-12T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6139238",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"11572-5"}],
                                      "text"=>"RA"},
                             "valueQuantity"=>{"value"=>160.0,
                                               "units"=>"IU/mL",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"[iU]/mL"},
                             "appliesDateTime"=>"2015-03-12T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6116005",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"415945006"},
                                                 {"system"=>"http://loinc.org/",
                                                  "code"=>"8310-5"}],
                                      "text"=>"Temperature Oral"},
                             "valueQuantity"=>{"value"=>39.0,
                                               "units"=>"degC",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"Cel"},
                             "appliesDateTime"=>"2015-03-12T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6115477",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"50373000"},
                                                 {"system"=>"http://loinc.org/",
                                                  "code"=>"8302-2"}],
                                      "text"=>"Height/Length Measured"},
                             "valueQuantity"=>{"value"=>149.86,
                                               "units"=>"cm",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"cm"},
                             "appliesDateTime"=>"2015-03-12T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6115882",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"54718008"},
                                                 {"system"=>"http://loinc.org/",
                                                  "code"=>"8867-4"}],
                                      "text"=>"Peripheral Pulse Rate"},
                             "valueQuantity"=>{"value"=>69.0,
                                               "units"=>"bpm"},
                             "appliesDateTime"=>"2015-03-12T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6115622",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"60621009"},
                                                 {"system"=>"http://loinc.org/",
                                                  "code"=>"39156-5"}],
                                      "text"=>"Body Mass Index Measured"},
                             "valueQuantity"=>{"value"=>24.64,
                                               "units"=>"kg/m2",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"kg/m2"},
                             "appliesDateTime"=>"2015-03-12T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6115618",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"27113001"},
                                                 {"system"=>"http://loinc.org/",
                                                  "code"=>"3141-9"}],
                                      "text"=>"Weight Measured"},
                             "valueQuantity"=>{"value"=>55.34,
                                               "units"=>"kg",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"kg"},
                             "appliesDateTime"=>"2015-03-12T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6115135",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"271649006"},
                                                 {"system"=>"http://loinc.org/",
                                                  "code"=>"8480-6"}],
                                      "text"=>"Systolic Blood Pressure"},
                             "valueQuantity"=>{"value"=>141.0,
                                               "units"=>"mmHg",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"mm[Hg]"},
                             "appliesDateTime"=>"2015-03-12T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/6115137",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://snomed.info/sct",
                                                  "code"=>"271650006"},
                                                 {"system"=>"http://loinc.org/",
                                                  "code"=>"8462-4"}],
                                      "text"=>"Diastolic Blood Pressure"},
                             "valueQuantity"=>{"value"=>91.0,
                                               "units"=>"mmHg",
                                               "system"=>"http://unitsofmeasure.org",
                                               "code"=>"mm[Hg]"},
                             "appliesDateTime"=>"2015-03-12T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"}}},
                {"title"=>"Observation Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/grouper%253A6115135%253A6115137",
                 "content"=>{"resourceType"=>"Observation",
                             "name"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                  "code"=>"55284-4"},
                                                 {"system"=>"http://snomed.info/sct",
                                                  "code"=>"75367002"}],
                                      "text"=>"Blood Pressure"},
                             "appliesDateTime"=>"2015-03-12T14:00:00.000Z",
                             "status"=>"final",
                             "reliability"=>"ok",
                             "subject"=>{"reference"=>"Patient/3602355"},
                             "related"=>[{"type"=>"has-component",
                                          "target"=>{"reference"=>"Observation/6115135"}},
                                         {"type"=>"has-component",
                                          "target"=>{"reference"=>"Observation/6115137"}}]}}]
    }

    DSTU1_PATIENT ||= {
      "resourceType"=>"Patient",
      "extension"=>[{"url"=>"http://cerner.com/fhir/extension/race",
                     "valueCodeableConcept"=>{"coding"=>[{"system"=>"http://cerner.com/fhir/valueset/race",
                                                          "display"=>"White"}],
                                              "text"=>"White"}}],
      "identifier"=>[{"use"=>"usual",
                      "label"=>"MRN",
                      "system"=>"http://cerner.com/fhir/identifier/MRN",
                      "value"=>"00004717"}],
      "name"=>[{"use"=>"usual",
                "text"=>"LOGGER, KIM",
                "family"=>["LOGGER"],
                "given"=>["KIM"],
                "suffix"=>[]}],
      "telecom"=>[{"system"=>"phone",
                   "value"=>"(816) 555-2312",
                   "use"=>"home"}],
      "gender"=>{"coding"=>[{"system"=>"http://hl7.org/fhir/v3/AdministrativeGender",
                             "code"=>"F",
                             "display"=>"Female"}]},
      "birthDate"=>"1963-06-17",
      "deceasedBoolean"=>false,
      "photo"=>[],
      "address"=>[{"use"=>"home",
                   "text"=>"10236 MARION PARK DR\nKANSAS CITY, MO 64137-1405\nUS",
                   "line"=>["10236 MARION PARK DR"],
                   "city"=>"KANSAS CITY",
                   "state"=>"MO",
                   "zip"=>"64137-1405"}],
      "contact"=>[],
      "careProvider"=>[{"reference"=>"Practitioner/3602366",
                        "display"=>"Knight MD, Wayne"}]
    }

    DSTU1_PATIENT_BUNDLE ||= {
      "resourceType"=>"Bundle",
      "title"=>"Search results for resource type Patient",
      "id"=>"f9c97ac7-4802-4cf5-b54a-3de57646ab5d",
      "link"=>[{"rel"=>"self",
                "href"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient?name=Logger&start=0&max=20"}],
      "updated"=>"2015-04-02T17:28:49.462+00:00",
      "author"=>[{"name"=>"Cerner Corporation"}],
      "entry"=>[{"title"=>"Patient Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient/3602355",
                 "content"=>DSTU1_PATIENT},
                {"title"=>"Patient Entry",
                 "id"=>"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient/3582172",
                 "content"=>{"resourceType"=>"Patient",
                             "identifier"=>[{"use"=>"usual",
                                             "label"=>"MRN",
                                             "system"=>"http://cerner.com/fhir/identifier/MRN",
                                             "value"=>"00002803"}],
                             "name"=>[{"use"=>"usual",
                                       "text"=>"Lucero, Bryan",
                                       "family"=>["Lucero"],
                                       "given"=>["Bryan"],
                                       "suffix"=>[]}],
                             "telecom"=>[],
                             "gender"=>{"coding"=>[{"system"=>"http://hl7.org/fhir/v3/AdministrativeGender",
                                                    "code"=>"M",
                                                    "display"=>"Male"}]},
                             "birthDate"=>"1929-11-02",
                             "deceasedBoolean"=>false,
                             "photo"=>[],
                             "address"=>[],
                             "contact"=>[],
                             "careProvider"=>[{"reference"=>"Practitioner/1315931",
                                               "display"=>"Ahmad MD, James"}]}}]
    }

    # MAY 2015 BALLOT JSON

    MAY2015_OPEN_METADATA ||= {
      "resourceType"=>"Conformance",
      "text"=>{"status"=>"generated",
               "div"=>"Generated Conformance Statement"},
      "url"=>"https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Conformance",
      "name"=>"SMART on FHIR Conformance Statement",
      "publisher"=>"Cerner",
      "description"=>"Describes capabilities of this server",
      "status"=>"draft",
      "date"=>"2015-05-06T16:03:55.188+00:00",
      "fhirVersion"=>"0.5.0",
      "acceptUnknown"=>false,
      "format"=>["json"],
      "rest"=>[{"mode"=>"server",
                "documentation"=>"All the functionality defined in FHIR",
                "security"=>{"cors"=>true},
                "resource" => [
                  {
                    "type"=> "AllergyIntolerance",
                    "interaction"=> [{"code"=> "search-type"
                      }
                    ],
                    "searchParam"=> [
                      {
                        "name"=> "patient",
                        "type"=> "reference",
                        "documentation"=> "Who the sensitivity is for"
                      }
                    ]
                  },
                  {
                    "type"=> "Encounter",
                    "interaction"=> [
                      {
                        "code"=> "read"
                      },
                      {
                        "code"=> "search-type"
                      }
                    ],
                    "readHistory"=> false,
                    "searchParam"=> [
                      {
                        "name"=> "patient",
                        "type"=> "reference",
                        "documentation"=> "The patient present at the encounter"
                      }
                    ]
                  },
                  {
                    "type"=> "Immunization",
                    "interaction"=> [
                      {
                        "code"=> "search-type"
                      }
                    ],
                    "searchParam"=> [
                      {
                        "name"=> "patient",
                        "type"=> "reference",
                        "documentation"=> "The patient for the vaccination record"
                      },
                      {
                        "name"=> "subject",
                        "type"=> "reference",
                        "documentation"=> "The patient for the vaccination record"
                      }
                    ]
                  },
                  {
                    "type"=> "Patient",
                    "interaction"=> [
                      {
                        "code"=> "read"
                      },
                      {
                        "code"=> "search-type"
                      }
                    ],
                    "readHistory"=> false,
                    "searchParam"=> [
                      {
                        "name"=> "_id",
                        "type"=> "token",
                        "documentation"=> "The logical resource id associated with the resource (must be supported by all servers)"
                      },
                      {
                        "name"=> "birthdate",
                        "type"=> "date",
                        "documentation"=> "The patient's date of birth"
                      },
                      {
                        "name"=> "identifier",
                        "type"=> "token",
                        "documentation"=> "A patient identifier"
                      },
                      {
                        "name"=> "name",
                        "type"=> "string",
                        "documentation"=> "A portion of either family or given name of the patient"
                      },
                      {
                        "name"=> "telecom",
                        "type"=> "string",
                        "documentation"=> "The value in any kind of telecom details of the patient"
                      },
                      {
                        "name"=> "start",
                        "type"=> "number",
                        "documentation"=> "The offset to use when returning results"
                      },
                      {
                        "name"=> "_count",
                        "type"=> "number",
                        "documentation"=> "The maximum number of results to return"
                      }
                    ]
                  }
                ]}]}

    MAY2015_AUTH_METADATA ||= {
      "resourceType"=>"Conformance",
      "text"=>{"status"=>"generated",
               "div"=>"Generated Conformance Statement"},
      "url"=>"https://fhir.sandboxcernerpowerchart.com/may2015/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Conformance",
      "name"=>"SMART on FHIR Conformance Statement",
      "publisher"=>"Cerner",
      "description"=>"Describes capabilities of this server",
      "status"=>"draft",
      "date"=>"2015-05-06T16:05:30.915+00:00",
      "fhirVersion"=>"0.5.0",
      "acceptUnknown"=>false,
      "format"=>["json"],
      "rest"=>[{"mode"=>"server",
                "documentation"=>"All the functionality defined in FHIR",
                "security"=>{"extension"=>[{"url"=>"http://fhir-registry.smarthealthit.org/Profile/oauth-uris#authorize",
                                            "valueUri"=>"https://fhir.sandboxcernerpowerchart.com/oauth2/authorize"},
                                           {"url"=>"http://fhir-registry.smarthealthit.org/Profile/oauth-uris#token",
                                            "valueUri"=>"https://fhir.sandboxcernerpowerchart.com/oauth2/token"}],
                             "cors"=>true,
                             "service"=>[{"coding"=>[{"system"=>"http://hl7.org/fhir/vs/restful-security-service",
                                                      "code"=>"OAuth2"}],
                                          "text"=>"OAuth version 2 (see oauth.net)."}],
                             "description"=>"SMART on FHIR uses OAuth2 for authorization"},
                "resource"=> [
                  {
                    "type"=> "AllergyIntolerance",
                    "interaction"=> [
                      {
                        "code"=> "search-type"
                      }
                    ],
                    "searchParam"=> [
                      {
                        "name"=> "patient",
                        "type"=> "reference",
                        "documentation"=> "Who the sensitivity is for"
                      }
                    ]
                  },
                  {
                    "type"=> "Condition",
                    "interaction"=> [
                      {
                        "code"=> "create"
                      },
                      {
                        "code"=> "search-type"
                      }
                    ],
                    "updateCreate"=> false,
                    "searchParam"=> [
                      {
                        "name"=> "patient",
                        "type"=> "reference",
                        "documentation"=> "Who has the condition?"
                      },
                      {
                        "name"=> "subject",
                        "type"=> "reference",
                        "documentation"=> "Who has the condition?"
                      }
                    ]
                  },
                  {
                    "type"=> "Encounter",
                    "interaction"=> [
                      {
                        "code"=> "read"
                      },
                      {
                        "code"=> "search-type"
                      }
                    ],
                    "readHistory"=> false,
                    "searchParam"=> [
                      {
                        "name"=> "patient",
                        "type"=> "reference",
                        "documentation"=> "The patient present at the encounter"
                      }
                    ]
                  },
                  {
                    "type"=> "Patient",
                    "interaction"=> [
                      {
                        "code"=> "read"
                      },
                      {
                        "code"=> "search-type"
                      }
                    ],
                    "readHistory"=> false,
                    "searchParam"=> [
                      {
                        "name"=> "_id",
                        "type"=> "token",
                        "documentation"=> "The logical resource id associated with the resource (must be supported by all servers)"
                      },
                      {
                        "name"=> "birthdate",
                        "type"=> "date",
                        "documentation"=> "The patient's date of birth"
                      },
                      {
                        "name"=> "identifier",
                        "type"=> "token",
                        "documentation"=> "A patient identifier"
                      },
                      {
                        "name"=> "name",
                        "type"=> "string",
                        "documentation"=> "A portion of either family or given name of the patient"
                      },
                      {
                        "name"=> "telecom",
                        "type"=> "string",
                        "documentation"=> "The value in any kind of telecom details of the patient"
                      },
                      {
                        "name"=> "start",
                        "type"=> "number",
                        "documentation"=> "The offset to use when returning results"
                      },
                      {
                        "name"=> "_count",
                        "type"=> "number",
                        "documentation"=> "The maximum number of results to return"
                      }
                    ]
                  }
                ]
               }]}

    MAY2015_CONDITION_BUNDLE ||= {
        "resourceType"=> "Bundle",
        "id"=> "d457d75f-4d8d-439e-9aca-2d8294457652",
        "type"=> "searchset",
        "base"=> "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f",
        "total" => 5,
        "link" => [{
                       "relation"=> "self",
                       "url"=> "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Condition?patient=1316024"
                   }],
        "entry" => [{
                        "resource" => {
                            "resourceType"=> "Condition",
                            "id"=> "d21591516",
                            "meta" => {
                                "versionId"=> "21591516",
                                "lastUpdated"=> "2013-02-08T18:03:09.000Z"
                            },
                            "text" => {
                                "status"=> "generated",
                                "div"=> "&lt;div>&lt;p>&lt;b>Condition&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Category&lt;/b>: Diagnosis&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Absence seizures, 345.0&lt;/p>&lt;p>&lt;b>Clinical Status&lt;/b>: Confirmed&lt;/p>&lt;p>&lt;b>Severity&lt;/b>: &lt;/p>&lt;p>&lt;b>Onset&lt;/b>: 2009-05-04&lt;/p>&lt;/div>"
                            },
                            "patient" => {
                                "reference"=> "Patient/1316024",
                                "display"=> "PETERS, TIMOTHY"
                            },
                            "encounter" => {
                                "reference"=> "Encounter/1309918"
                            },
                            "asserter" => {
                                "reference"=> "Practitioner/1418008",
                                "display"=> "Brewer, Phil V"
                            },
                            "dateAsserted"=> "2013-02-08",
                            "code" => {
                                "coding" => [{
                                                 "system"=> "http://hl7.org/fhir/sid/icd-9",
                                                 "code"=> "345.0",
                                                 "display"=> "Generalized nonconvulsive epilepsy",
                                                 "primary" => true
                                             }],
                                "text"=> "Absence seizures"
                            },
                            "category" => {
                                "coding" => [{
                                                 "system"=> "http://hl7.org/fhir/condition-category",
                                                 "code"=> "diagnosis",
                                                 "display"=> "Diagnosis"
                                             }],
                                "text"=> "Diagnosis"
                            },
                            "clinicalStatus"=> "confirmed",
                            "onsetDateTime"=> "2009-05-04"
                        }
                    }, {
                        "resource" => {
                            "resourceType"=> "Condition",
                            "id"=> "p1147855",
                            "meta" => {
                                "versionId"=> "1209866",
                                "lastUpdated"=> "2013-04-26T14:45:17.000Z"
                            },
                            "text"=> {
                                "status"=> "generated",
                                "div"=> "&lt;div>&lt;p>&lt;b>Condition&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Lumbar, 264082005&lt;/p>&lt;p>&lt;b>Clinical Status&lt;/b>: Entered in Error&lt;/p>&lt;p>&lt;b>Severity&lt;/b>: &lt;/p>&lt;p>&lt;b>Onset&lt;/b>: &lt;/p>&lt;p>&lt;b>Abatement&lt;/b>: false&lt;/p>&lt;/div>"
                            },
                            "patient"=> {
                                "reference"=> "Patient/1316024",
                                "display"=> "PETERS, TIMOTHY"
                            },
                            "asserter"=> {
                                "reference"=> "Practitioner/605923",
                                "display"=> "Hoff, David"
                            },
                            "dateAsserted"=> "2012-08-28",
                            "code"=> {
                                "coding"=> [{
                                                "system"=> "http://snomed.info/sct",
                                                "code"=> "264082005",
                                                "display"=> "Lumbar (qualifier value)",
                                                "primary"=> true
                                            }],
                                "text"=> "Lumbar"
                            },
                            "clinicalStatus"=> "entered-in-error"
                        }
                    }, {
                        "resource"=> {
                            "resourceType"=> "Condition",
                            "id"=> "p1251556",
                            "meta"=> {
                                "versionId"=> "1251556",
                                "lastUpdated"=> "2015-09-30T18:07:26.000Z"
                            },
                            "text"=> {
                                "status"=> "generated",
                                "div"=> "&lt;div>&lt;p>&lt;b>Condition&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Red eye, 75705005&lt;/p>&lt;p>&lt;b>Clinical Status&lt;/b>: unknown&lt;/p>&lt;p>&lt;b>Severity&lt;/b>: &lt;/p>&lt;p>&lt;b>Onset&lt;/b>: &lt;/p>&lt;p>&lt;b>Abatement&lt;/b>: false&lt;/p>&lt;/div>"
                            },
                            "patient"=> {
                                "reference"=> "Patient/1316024",
                                "display"=> "PETERS, TIMOTHY"
                            },
                            "code"=> {
                                "coding"=> [{
                                                "system"=> "http://snomed.info/sct",
                                                "code"=> "75705005",
                                                "display"=> "Red eye (disorder)",
                                                "primary"=> true
                                            }],
                                "text"=> "Red eye"
                            },
                            "clinicalStatus"=> "unknown"
                        }
                    }, {
                        "resource"=> {
                            "resourceType"=> "Condition",
                            "id"=> "p1242256",
                            "meta"=> {
                                "versionId"=> "1242256",
                                "lastUpdated"=> "2014-08-07T20:48:06.000Z"
                            },
                            "text"=> {
                                "status"=> "generated",
                                "div"=> "&lt;div>&lt;p>&lt;b>Condition&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Heartwater, 73896008&lt;/p>&lt;p>&lt;b>Clinical Status&lt;/b>: unknown&lt;/p>&lt;p>&lt;b>Severity&lt;/b>: &lt;/p>&lt;p>&lt;b>Onset&lt;/b>: 2008&lt;/p>&lt;p>&lt;b>Abatement&lt;/b>: 2014-08-07&lt;/p>&lt;/div>"
                            },
                            "patient"=> {
                                "reference"=> "Patient/1316024",
                                "display"=> "PETERS, TIMOTHY"
                            },
                            "code"=> {
                                "coding"=> [{
                                                "system"=> "http://snomed.info/sct",
                                                "code"=> "73896008",
                                                "display"=> "Heartwater (disorder)",
                                                "primary"=> true
                                            }],
                                "text"=> "Heartwater"
                            },
                            "clinicalStatus"=> "unknown",
                            "onsetDateTime"=> "2008",
                            "abatementDate"=> "2014-08-07"
                        }
                    }, {
                        "resource"=> {
                            "resourceType"=> "Condition",
                            "id"=> "d21786652",
                            "meta"=> {
                                "versionId"=> "21786656",
                                "lastUpdated"=> "2013-11-21T19:41:14.000Z"
                            },
                            "text"=> {
                                "status"=> "generated",
                                "div"=> "&lt;div>&lt;p>&lt;b>Condition&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Category&lt;/b>: Diagnosis&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Strep throat, 43878008&lt;/p>&lt;p>&lt;b>Clinical Status&lt;/b>: Confirmed&lt;/p>&lt;p>&lt;b>Severity&lt;/b>: &lt;/p>&lt;p>&lt;b>Onset&lt;/b>: 2013-11-21&lt;/p>&lt;/div>"
                            },
                            "patient"=> {
                                "reference"=> "Patient/1316024",
                                "display"=> "PETERS, TIMOTHY"
                            },
                            "encounter"=> {
                                "reference"=> "Encounter/1591906"
                            },
                            "asserter"=> {
                                "reference"=> "Practitioner/1348007",
                                "display"=> "Hunter, Trill"
                            },
                            "dateAsserted"=> "2013-11-21",
                            "code"=> {
                                "coding"=> [{
                                                "system"=> "http://snomed.info/sct",
                                                "code"=> "43878008",
                                                "display"=> "Streptococcal sore throat (disorder)",
                                                "primary"=> true
                                            }],
                                "text"=> "Strep throat"
                            },
                            "category"=> {
                                "coding"=> [{
                                                "system"=> "http://hl7.org/fhir/condition-category",
                                                "code"=> "diagnosis",
                                                "display"=> "Diagnosis"
                                            }],
                                "text"=> "Diagnosis"
                            },
                            "clinicalStatus"=> "confirmed",
                            "onsetDateTime"=> "2013-11-21",
                            "notes"=> "11/21/13 1:41 PM - Hunter, Trill\r\nTest #2\r\n\r\n11/21/13 1:40 PM - Hunter, Trill\r\nTest"
                        }
                    }]
         }

    MAY2015_DIAGNOSTIC_REPORT_BUNDLE ||= {
        "resourceType"=>"Bundle",
        "id"=> "b2502416-98eb-4a53-b9cc-3262c1617a71",
        "type"=> "searchset",
        "base"=> "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f",
        "total"=> 1,
        "link"=> [{"relation"=> "self",
                   "url"=> "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport?patient=1316020"}],
        "entry"=> [{"resource"=> {"resourceType"=> "DiagnosticReport",
                                  "id"=> "4149257",
                                  "name"=> {"coding"=> [{"system"=> "http://loinc.org/",
                                                         "code"=> "41806-1"},
                                                        {"system"=> "http://snomed.info/sct",
                                                         "code"=> "77477000"}],
                                            "text"=> "CT Abdomen w/ Contrast"},
                                  "status"=> "final",
                                  "issued"=> "2014-12-09T16:49:02.000Z",
                                  "subject"=> {"reference"=> "Patient/1316020"},
                                  "performer"=> {"reference"=> "Practitioner/1700007",
                                                 "display"=> "Grayson, Richard"},
                                  "encounter"=> {"reference"=> "Encounter/2571909"},
                                  "conclusion"=> "Report Here is a rad   Signature Line:***** Preliminary Report *****   Transcribed by: SM"}}]
    }

    MAY2015_ENCOUNTER ||= {
      "resourceType" => "Encounter",
      "id" => "2787906",
      "status" => "in-progress",
      "patient" => {"reference" => "Patient/1316020"},
      "participant" => [{"type" => [{"coding" => [{"system" => "http://hl7.org/fhir/v3/ParticipationType",
                                                   "code" => "ATND",
                                                   "display" => "attender"}],
                                     "text" => "attender"}],
                         "individual" => {"display" => "Knight MD, Wayne"}}],
      "period" => {"start" => "2015-01-05T22:50:48.000Z"},
      "location" => [{"location" => {"display" => "Baseline East"},
                      "period" => {"start" => "2015-01-05T22:50:48.000Z"}}]
    }

    MAY2015_ENCOUNTER_BUNDLE ||= {
      "resourceType" => "Bundle",
      "id" => "40be3b40-6945-4db9-b993-2f67a44c77a6",
      "type" => "searchset",
      "base" => "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f",
      "total" => 2,
      "link" => [{"relation" => "self",
                  "url" => "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Encounter?patient=1316020"}],
      "entry" => [{"resource" => MAY2015_ENCOUNTER},
                  {"resource" =>
                     {"resourceType" => "Encounter",
                      "id" => "2777906",
                      "status" => "in-progress",
                      "patient" => {"reference" => "Patient/1316020"},
                      "period" => {"start" => "2014-12-15T18:47:41.000Z"},
                      "location" => [{"location" => {"display" => "Baseline East"},
                                      "period" => {"start" => "2014-12-15T18:47:41.000Z"}}]}}]
    }

    MAY2015_PATIENT ||= {
      "resourceType"=> "Patient",
      "id"=> "725944",
      "identifier"=> [{"use"=> "usual",
                      "type"=> {"coding"=> [{"system"=> "http://hl7.org/fhir/v2/0203",
                                           "code"=> "MR",
                                           "display"=> "Medical record number"}]},
                      "system"=> "http://cerner.com/fhir/identifier/MRN",
                      "value"=> "10000086"},
                     {"use"=> "usual",
                      "type"=> {"coding"=> [{"system"=> "http://hl7.org/fhir/v2/0203",
                                           "code"=> "MR",
                                           "display"=> "Medical record number"}]},
                      "system"=> "http://cerner.com/fhir/identifier/MRN",
                      "value"=> "10000057"}],
      "name"=> [{"use"=> "usual",
                "text"=> "SMITH, MORGAN",
                "family"=> ["SMITH"],
                "given"=> ["MORGAN"]}],
      "telecom"=> [{"system"=> "phone",
                   "value"=> "(816) 867-5234",
                   "use"=> "home"}],
      "gender"=> "female",
      "birthDate"=> "1970-01-01",
      "deceasedBoolean"=> false,
      "address"=> [{"use"=> "home",
                   "text"=> "123 Sesame Street\nKansas City, MO 64112\nUSA",
                   "line"=> ["123 Sesame Street"],
                   "city"=> "Kansas City",
                   "state"=> "MO",
                   "postalCode"=> "64112"}],
      "maritalStatus"=> {"coding"=> [{"system"=> "http://hl7.org/fhir/v3/MaritalStatus",
                                    "code"=> "M",
                                    "display"=> "Married"}],
                        "text"=> "Married"},
      "active"=> true
    }

    MAY2015_PATIENT_BUNDLE ||={
      "resourceType"=> "Bundle",
      "id"=> "60eb43c1-1258-4d30-9d9e-ed0b9e2cc33b",
      "type"=> "searchset",
      "base"=> "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f",
      "total"=> 2,
      "link"=> [{"relation"=> "self",
                "url"=> "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient?name=Smith&start=0&_count=20"}],
      "entry"=> [{"resource"=> MAY2015_PATIENT},
                {"resource"=> {"resourceType"=> "Patient",
                              "id"=> "685924",
                              "identifier"=> [{"use"=> "usual",
                                              "type"=> {
                                              "coding"=> [{"system"=> "http://hl7.org/fhir/v2/0203",
                                                          "code"=> "MR",
                                                          "display"=> "Medical record number"}]},
                                              "system"=> "http://cerner.com/fhir/identifier/MRN",
                                              "value"=> "00000227"},
                                             {"use"=> "usual",
                                              "type"=> {"coding"=> [{"system"=> "http://hl7.org/fhir/v2/0203",
                                                                   "code"=> "MR",
                                                                   "display"=> "Medical record number"}]},
                                              "system"=> "http://cerner.com/fhir/identifier/MRN",
                                              "value"=> "10000210"}],
                              "name"=> [{"use"=> "usual",
                                        "text"=> "SMITH, JOHN ANDREW",
                                        "family"=> ["SMITH"],
                                        "given"=> ["JOHN", "ANDREW"]}],
                              "gender"=> "male",
                              "birthDate"=> "1976-08-10",
                              "deceasedBoolean"=> false,
                              "careProvider"=> [{"reference"=> "Practitioner/1448009",
                                                "display"=> "Daniel,, Christina"}],
                              "active"=> true}}]
    }

    MAY2015_ALLERGY_INTOLERANCE_BUNDLE ||= {
        "resourceType" => "Bundle",
        "id" => "b52eae32-0882-46b2-a3d1-6d78c40e016c",
        "type" => "searchset",
        "base" => "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f",
        "total" => 2,
        "link" => [{"relation" => "self",
                    "url" => "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance?patient=3602355"}],
        "entry" => [{"resource" => {"resourceType" => "AllergyIntolerance",
                                    "id" => "3276869",
                                    "recordedDate" => "2015-03-26T17:06:21.000Z",
                                    "patient" => {"reference" => "Patient/3602355"},
                                    "reporter" => {"display" => "Patient"},
                                    "substance" => {"text" => "morphine"},
                                    "status" => "confirmed",
                                    "type" => "immune",
                                    "category" => "medication",
                                    "event" => [
                                        {
                                            "manifestation" => [
                                                {
                                                    "coding" => [
                                                        {
                                                            "system" => "http://snomed.info/sct",
                                                            "code" => "369546013",
                                                            "display" => "Hives"
                                                        }
                                                    ],
                                                    "text" => "Hives"
                                                }
                                            ],
                                            "description" => "Hives"
                                        }
                                    ]
                    }},
                    {"resource" => {"resourceType" => "AllergyIntolerance",
                                    "id" => "3276865",
                                    "recordedDate" => "2015-03-26T17:05:24.000Z",
                                    "patient" => {"reference" => "Patient/3602355"},
                                    "reporter" => {"display" => "Parent"},
                                    "substance" => {"text" => "Peanuts"},
                                    "status" => "refuted",
                                    "type" => "non-immune",
                                    "category" => "food",
                                    "comment" => "Allergic to peanuts", }}]
    }

    MAY2015_IMMUNIZATION_BUNDLE ||= {
        "resourceType" => "Bundle",
        "id" => "27780a25-18ba-4fd8-9c18-e3beb215d2c2",
        "type" => "searchset",
        "base" => "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f",
        "total" => 2,
        "link" => [{"relation" => "self",
                    "url" => "https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Immunization?patient=3602356"}],
        "entry" => [{"resource" => {"resourceType" => "Immunization",
                                    "id" => "2571542",
                                    "date" => "2014-03-11T20:00:00.000Z",
                                    "vaccineType" => {"coding" => [{"system" => "http://hl7.org/fhir/v3/VaccineType",
                                                                    "code" => "88"}],
                                                      "text" => "Fluzone Intradermal 2013-2014"},
                                    "patient" => {"reference" => "Patient/3602356"},
                                    "wasNotGiven" => false,
                                    "reported" => false}},
                    {"resource" => {"resourceType" => "Immunization",
                                    "id" => "2571538",
                                    "date" => "2012-09-05T18:28:00.000Z",
                                    "vaccineType" => {"coding" => [{"system" => "http://hl7.org/fhir/v3/VaccineType",
                                                                    "code" => "28"}],
                                                      "text" => "diphtheria toxoid"},
                                    "patient" => {"reference" => "Patient/3602356"},
                                    "wasNotGiven" => false,
                                    "reported" => false}}]
    }
    
    MAY2015_MEDICATION_PRESCRIPTION_BUNDLE ||= {
        "resourceType"=>"Bundle",
        "id"=>"11025158-de65-4fd2-a7e6-a1f4a2bf897b",
        "type"=>"searchset",
        "base"=>
            "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f",
        "total"=>1,
        "link"=>
            [{"relation"=>"self",
              "url"=>
                  "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationPrescription?patient=33840071"}],
        "entry"=>
            [{"resource"=>
                  {"resourceType"=>"MedicationPrescription",
                   "id"=>"18306001",
                   "contained"=>
                       [{"resourceType"=>"Medication",
                         "id"=>"2750103",
                         "code"=>
                             {"coding"=>
                                  [{"system"=>"http://www.nlm.nih.gov/research/umls/rxnorm",
                                    "code"=>"853499",
                                    "display"=>"Aspirin 228 MG Chewing Gum"}],
                              "text"=>"aspirin 227.5 mg oral gum"},
                         "name"=>"aspirin 227.5 mg oral gum"}],
                   "status"=>"active",
                   "patient"=>{"reference"=>"Patient/33840071"},
                   "prescriber"=>
                       {"reference"=>"Practitioner/20440201", "display"=>"Tatlock, Stephen"},
                   "medication"=>
                       {"reference"=>"#2750103", "display"=>"aspirin 227.5 mg oral gum"},
                   "dosageInstruction"=>
                       [{"text"=>
                             "227.5 mg, 1 EA, Chewed, q4hr, Special instructions, PRN: for sore throat, 60 EA",
                         "additionalInstructions"=>{"text"=>"Chew vigorously"},
                         "scheduledPeriod"=>
                             {"start"=>"2015-05-07T20:31:00.000Z",
                              "end"=>"2015-05-10T21:00:00.000Z"},
                         "asNeededCodeableConcept"=>{"text"=>"for sore throat"},
                         "route"=>{"text"=>"Chewed"},
                         "doseQuantity"=>{"value"=>1.0, "units"=>"EA"}}],
                   "dispense"=>
                       {"medication"=>
                            {"reference"=>"#2750103", "display"=>"aspirin 227.5 mg oral gum"},
                        "quantity"=>{"value"=>"60", "units"=>"EA"}}}}]
    }

    MAY2015_OBSERVATION_BUNDLE ||= {
        "resourceType"=>"Bundle",
        "id"=>"15262c30-ec5a-4ab5-a2ac-d5d879d1f180",
        "type" => "searchset",
        "base" => "https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f",
        "total" => 5,
        "link"=>[{"relation"=>"self",
                  "url"=>"https://fhir.sandboxcernerpowerchart.com/may2015/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation?subject:Patient=3602355"}],
        "entry"=>[{"resource"=>{"resourceType"=>"Observation",
                                "id" => "4707327",
                                "code"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                     "code"=>"35591-7"}],
                                         "text"=>"Estimated Creatinine Clearance"},
                                "valueQuantity"=>{"value"=>37.83,
                                                  "units"=>"mL/min",
                                                  "system"=>"http://unitsofmeasure.org",
                                                  "code"=>"mL/min"},
                                "appliesDateTime"=>"2015-03-27T19:08:15.000Z",
                                "status"=>"final",
                                "reliability"=>"ok",
                                "subject"=>{"reference"=>"Patient/3602355"}}},
                  {"resource"=>{"resourceType"=>"Observation",
                                "id" => "4707333",
                                "code"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                     "code"=>"35591-7"}],
                                         "text"=>"Estimated Creatinine Clearance"},
                                "valueQuantity"=>{"value"=>30.26,
                                                  "units"=>"mL/min",
                                                  "system"=>"http://unitsofmeasure.org",
                                                  "code"=>"mL/min"},
                                "appliesDateTime"=>"2015-03-27T19:06:35.000Z",
                                "status"=>"final",
                                "reliability"=>"ok",
                                "subject"=>{"reference"=>"Patient/3602355"}}},
                  {"resource"=>{"resourceType"=>"Observation",
                                "id"=> "4707331",
                                "code"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                     "code"=>"2160-0"}],
                                         "text"=>"Creatinine Lvl"},
                                "valueQuantity"=>{"value"=>1.2,
                                                  "units"=>"mg/dL",
                                                  "system"=>"http://unitsofmeasure.org",
                                                  "code"=>"mg/dL"},
                                "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                                "status"=>"final",
                                "reliability"=>"ok",
                                "subject"=>{"reference"=>"Patient/3602355"}}},
                  {"resource"=>{"resourceType"=>"Observation",
                                "id"=> "4707335",
                                "code"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                     "code"=>"1751-7"}],
                                         "text"=>"Albumin Lvl"},
                                "valueQuantity"=>{"value"=>4.1,
                                                  "units"=>"g/dL",
                                                  "system"=>"http://unitsofmeasure.org",
                                                  "code"=>"g/dL"},
                                "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                                "status"=>"final",
                                "reliability"=>"ok",
                                "subject"=>{"reference"=>"Patient/3602355"}}},
                  {"resource"=>{"resourceType"=>"Observation",
                                "id"=> "4679258",
                                "code"=>{"coding"=>[{"system"=>"http://loinc.org/",
                                                     "code"=>"6768-6"}],
                                         "text"=>"Alk Phos"},
                                "valueQuantity"=>{"value"=>91.0,
                                                  "units"=>"IU/L",
                                                  "system"=>"http://unitsofmeasure.org",
                                                  "code"=>"[iU]/d"},
                                "appliesDateTime"=>"2015-03-15T14:00:00.000Z",
                                "status"=>"final",
                                "reliability"=>"ok",
                                "subject"=>{"reference"=>"Patient/3602355"}}}]
    }

  end
end

include Cerner::Resources::Helpers
