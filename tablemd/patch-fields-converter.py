import json
import sys
import re

if len(sys.argv) == 1:
  sys.exit

filename = sys.argv[1]

print(filename)

file = open(filename)
fileContent = file.read()
file.close()

# inputjson ='{"terminology": {"table_name":"terminology","name":"ProcedureRequest","fields":[{"name":"code","type":"<a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#CodeableConcept\\"><code>CodeableConcept</code></a>","required":"Yes","description":"The specific procedure that is ordered. Use text if the exact nature of the procedure cannot be coded.","binding":{"description":"A code to identify a specific procedure.","terminology":[{"display":"SNOMED CT","system":"http://snomed.info/sct","info_link":"http://hl7.org/fhir/dstu2/snomedct.html"}]},"url":"http://hl7.org/fhir/dstu2/procedurerequest-definitions.html#ProcedureRequest.code"},{"name":"bodySite","type":"<code>List</code> <code>of</code> <a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#CodeableConcept\\"><code>CodeableConcept</code></a>","required":"No","description":"Indicates the sites on the subject\'s body where the procedure should be performed (I.e. the target sites).","binding":{"description":"A code that identifies the anatomical location.","terminology":[{"display":"SNOMED CT","system":"http://snomed.info/sct","info_link":"http://hl7.org/fhir/dstu2/snomedct.html"}]},"url":"http://hl7.org/fhir/dstu2/procedurerequest-definitions.html#ProcedureRequest.bodySite"},{"name":"reasonCodeableConcept","type":"<a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#CodeableConcept\\"><code>CodeableConcept</code></a>","required":"No","description":"The reason why the procedure is being proposed or ordered.","binding":{"description":"A code that explains the reason why a procedure is required.","terminology":[{"display":"SNOMED CT","system":"http://snomed.info/sct","info_link":"http://hl7.org/fhir/dstu2/snomedct.html"},{"display":"ICD-9-CM","system":"http://hl7.org/fhir/sid/icd-9-cm","info_link":"http://hl7.org/fhir/icd.html"},{"display":"ICD-10-CM","system":"http://hl7.org/fhir/sid/icd-10-cm","info_link":"http://hl7.org/fhir/icd.html"}]},"url":"http://hl7.org/fhir/dstu2/procedurerequest-definitions.html#ProcedureRequest.reason_x_"},{"name":"scheduledTiming","type":"<a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#Timing\\"><code>Timing</code></a>","required":"No","description":"The timing schedule for the proposed or ordered procedure.\\n","url":"http://hl7.org/fhir/dstu2/procedurerequest-definitions.html#ProcedureRequest.scheduled_x_"},{"name":"scheduledTiming.code","type":"<a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#CodeableConcept\\"><code>CodeableConcept</code></a>","required":"No","description":"A code for the timing pattern.","binding":{"description":"Code for a known / defined timing pattern.","terminology":[{"display":"TimingAbbreviation","system":"http://hl7.org/fhir/timing-abbreviation","info_link":"http://hl7.org/fhir/dstu2/valueset-timing-abbreviation.html"},{"display":"SNOMED CT","system":"http://snomed.info/sct","info_link":"http://hl7.org/fhir/dstu2/snomedct.html"}]},"url":"http://hl7.org/fhir/DSTU2/datatypes-definitions.html#Timing.code"},{"name":"asNeeded[x]","type":"<a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#boolean\\"><code>boolean</code></a> | <a target=\\"_blank\\" href=\\"http://hl7.org/fhir/DSTU2/datatypes.html#CodeableConcept\\"><code>CodeableConcept</code></a>","required":"No","description":"If a CodeableConcept is present, it indicates the pre-condition for performing the procedure.\\n","binding":{"description":"A coded concept identifying the pre-condition that should hold prior to performing a procedure.","note":"Currently not bound to any terminology."},"url":"http://hl7.org/fhir/dstu2/procedurerequest-definitions.html#ProcedureRequest.asNeeded_x_"}]}}'

patch = json.loads(fileContent)
file.close()

if (patch.get('table_name') != 'patch_operation'):
  sys.exit


ops = []
paths = dict()
summaries = dict()
operations = dict()
types = dict()
urls = dict()
examples = dict()
notes = dict()

name = patch.get('name')
first = True

for field in patch.get('fields'):

  if field.get('operation') not in ops:
    ops.append(field.get('operation'))

  fieldName = field.get('name')
  paths[fieldName] = field.get('path')
  operations[fieldName] = field.get('operation')
  types[fieldName] = field.get('type')
  urls[fieldName] = field.get('url')
  examples[fieldName] = field.get('example')
  notes[fieldName] = field.get('note')

  summary = []
  if field.get('description'):
    summary.append(field.get('description'))
  # if field.get('note'):
    # summary.append(field.get('note'))

  summaries[fieldName] = '\n'.join(summary)


################ output

content = []
content.append('')
content.append('  description: |')
content.append('    # Patch Operations')
content.append('')
## insert summary text from md

for name, path in paths.items():
  content.append('    ## ' + name.replace('-', ' ').title())
  summary = summaries[name]
  if summary:
    summary = summary.replace("\n","\n    ")
    content.append('    _Description_')
    content.append('    ')
    content.append('    ' + summary)
  content.append('    ')
  content.append('    |Path|Operation|Value Type|')
  content.append('    |---|---|---|')

  path = '[`' + path + '`](' + urls[name] + ')'
  content.append('    |' + path + '|`' + operations[name] + '`|' + types[name] + '|')
  content.append('    ')
  content.append('    _Example_')
  content.append('    ')
  content.append('    ````json')
  content.append('    ' + examples[name].replace("\n","\n    "))
  content.append('    ````')
  if notes[name]:
    content.append('    ')
    content.append('    _Notes_')
    content.append('    ' + notes[name].replace("\n","\n    "))

content.append('  consumes: ')
content.append('  produces: ')
content.append('  parameters: ')
content.append('    - name: patchBody')
content.append('      in: body')
content.append('      required: true')
content.append('      schema: {')
content.append('        "$ref": "#definitions/PatchBody"')
content.append('      }')
content.append('  responses: ')
content.append('')

content.append('definitions:')
content.append('  PatchBody:')
content.append('    type: array')
content.append('    minItems: 1')
content.append('    items:')
content.append('      type: object')
content.append('      required:')
content.append('      - op')
content.append('      - path')
content.append('      properties:')
content.append('        op:')
content.append('          type: string')
content.append('          enum:')

list(set(ops)).sort()
for op in ops:
  content.append('          - ' + op)

content.append('        path:')
content.append('          type: string')
content.append('        value:')
content.append('          type: string')

# print('\n'.join(content))

outputFile = open(filename[:-5] + '.yaml', 'w')
outputFile.write('\n'.join(content))
outputFile.close()


