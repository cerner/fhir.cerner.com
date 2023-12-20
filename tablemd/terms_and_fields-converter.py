import json
import sys

if len(sys.argv) == 1:
  sys.exit

filename = sys.argv[1]

print(filename)

fileContent = open(filename, 'r').read()

# inputjson ='{"terminology": {"table_name":"terminology","name":"ProcedureRequest","fields":[{"name":"code","type":"<a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#CodeableConcept\\"><code>CodeableConcept</code></a>","required":"Yes","description":"The specific procedure that is ordered. Use text if the exact nature of the procedure cannot be coded.","binding":{"description":"A code to identify a specific procedure.","terminology":[{"display":"SNOMED CT","system":"http://snomed.info/sct","info_link":"http://hl7.org/fhir/dstu2/snomedct.html"}]},"url":"http://hl7.org/fhir/dstu2/procedurerequest-definitions.html#ProcedureRequest.code"},{"name":"bodySite","type":"<code>List</code> <code>of</code> <a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#CodeableConcept\\"><code>CodeableConcept</code></a>","required":"No","description":"Indicates the sites on the subject\'s body where the procedure should be performed (I.e. the target sites).","binding":{"description":"A code that identifies the anatomical location.","terminology":[{"display":"SNOMED CT","system":"http://snomed.info/sct","info_link":"http://hl7.org/fhir/dstu2/snomedct.html"}]},"url":"http://hl7.org/fhir/dstu2/procedurerequest-definitions.html#ProcedureRequest.bodySite"},{"name":"reasonCodeableConcept","type":"<a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#CodeableConcept\\"><code>CodeableConcept</code></a>","required":"No","description":"The reason why the procedure is being proposed or ordered.","binding":{"description":"A code that explains the reason why a procedure is required.","terminology":[{"display":"SNOMED CT","system":"http://snomed.info/sct","info_link":"http://hl7.org/fhir/dstu2/snomedct.html"},{"display":"ICD-9-CM","system":"http://hl7.org/fhir/sid/icd-9-cm","info_link":"http://hl7.org/fhir/icd.html"},{"display":"ICD-10-CM","system":"http://hl7.org/fhir/sid/icd-10-cm","info_link":"http://hl7.org/fhir/icd.html"}]},"url":"http://hl7.org/fhir/dstu2/procedurerequest-definitions.html#ProcedureRequest.reason_x_"},{"name":"scheduledTiming","type":"<a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#Timing\\"><code>Timing</code></a>","required":"No","description":"The timing schedule for the proposed or ordered procedure.\\n","url":"http://hl7.org/fhir/dstu2/procedurerequest-definitions.html#ProcedureRequest.scheduled_x_"},{"name":"scheduledTiming.code","type":"<a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#CodeableConcept\\"><code>CodeableConcept</code></a>","required":"No","description":"A code for the timing pattern.","binding":{"description":"Code for a known / defined timing pattern.","terminology":[{"display":"TimingAbbreviation","system":"http://hl7.org/fhir/timing-abbreviation","info_link":"http://hl7.org/fhir/dstu2/valueset-timing-abbreviation.html"},{"display":"SNOMED CT","system":"http://snomed.info/sct","info_link":"http://hl7.org/fhir/dstu2/snomedct.html"}]},"url":"http://hl7.org/fhir/DSTU2/datatypes-definitions.html#Timing.code"},{"name":"asNeeded[x]","type":"<a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#boolean\\"><code>boolean</code></a> | <a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#CodeableConcept\\"><code>CodeableConcept</code></a>","required":"No","description":"If a CodeableConcept is present, it indicates the pre-condition for performing the procedure.\\n","binding":{"description":"A coded concept identifying the pre-condition that should hold prior to performing a procedure.","note":"Currently not bound to any terminology."},"url":"http://hl7.org/fhir/dstu2/procedurerequest-definitions.html#ProcedureRequest.asNeeded_x_"}]}}'

terms = json.loads(fileContent)

if (terms.get('table_name') != 'terminology'):
  sys.exit

# terms = json.loads(inputjson).get('terminology')

name = terms.get('name')
first = True
outputMd = ['|Terminology Mappings|', '|---|']

for field in terms.get('fields'):
  binding = field.get('binding')
  if (binding is None):
    continue

  fieldRow = []

  # if first is True:
    # first = False
  # else:
    # outputMd.append('\n')
    # outputMd.append('')
    # outputMd.append('\n---\n')
    # outputMd.append('')

  url = field.get('url')
  fieldName = name + '.' + field.get('name')
  if url is None:
    fieldRow.append('|<p>**' + fieldName + '**')
  else:
    fieldRow.append('|<p>**[' + fieldName + '](' + url + '){:target="_blank"}**')

  fieldRow.append('<hr>')

  fieldInfo = []
  description = binding.get('description')
  if description is not None:
    # outputMd.append('')
    fieldInfo.append('**Description**')
    fieldInfo.append('- ' + description)

  note = binding.get('note')
  if note is not None:
    fieldInfo.append('**Note**')
    fieldInfo.append('- '+ note)

  terminology = binding.get('terminology')
  if terminology is not None:
    for term in terminology:
      display = term.get('display')
      system = term.get('system')
      info_link = term.get('info_link')

      if display is None and system is None:
        continue

      if info_link is not None:
        fieldInfo.append('')
        fieldInfo.append('**Details:** [' + display + '](' + info_link + '){:target="_blank"}<br>')
        fieldInfo.append('**System:** `' + system + '`')
      elif display is not None and system is not None:
        fieldInfo.append('')
        fieldInfo.append('[' + display + '](' + system + '){:target="_blank"}')
      elif system is not None:
        fieldInfo.append('')
        fieldInfo.append('[' + system + '](' + system + '){:target="_blank"}')
      else:
        fieldInfo.append('')
        fieldInfo.append(display)
  fieldRow.append('<br>'.join(fieldInfo) + '<br><br>|')
  outputMd.append(''.join(fieldRow))

outputMd = '\n'.join(outputMd)
print(outputMd)
