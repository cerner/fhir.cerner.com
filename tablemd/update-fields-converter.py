import json
import sys
import re

if len(sys.argv) == 1:
  sys.exit

filename = sys.argv[1]

print('parsing file: ' + filename)

file = open(filename)
fileContent = file.read()
file.close()

patch = json.loads(fileContent)
file.close()

if (patch.get('table_name') != 'update'):
  sys.exit


ops = []
paths = dict()
summaries = dict()
operations = dict()
types = dict()
urls = dict()
examples = dict()
notes = dict()
required = []

resourceName = patch.get('name')
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
  if field.get('required') and field.get('required').lower() == 'yes':
    required.append(fieldName)

  summary = []
  if field.get('description'):
    summary.append(field.get('description'))

  summaries[fieldName] = '\n'.join(summary)



################ output

content = []
content.append('    put:')
content.append('      description: |')
content.append('        # Update Operations')
content.append('')
## insert summary text from md

content.append('      operationId: update' + resourceName.replace(' ', ''))
content.append('      consumes:')
content.append('      - application/fhir+json')
content.append('      produces:')
content.append('      - application/json')
content.append('      parameters: ')
content.append('        - name: updateBody')
content.append('          in: body')
content.append('          required: true')
content.append('          schema:')
content.append('            $ref: "#/definitions/UpdateBody"')
content.append('        - name: If-Match')
content.append('          in: header')
content.append('          required: true')
content.append('          type: string')
content.append('      responses: ')
content.append('        200:')
content.append('          description: OK')
content.append('          headers:')
content.append('            X-Request-Id:')
content.append('              type: string')
content.append('              description: Oracle troubleshooting identifier.')
content.append('            opc-request-id:')
content.append('              type: string')
content.append('              description: Oracle troubleshooting identifier.')
content.append('            ETag:')
content.append('              type: string')
content.append('              description: The identifier for a specific version of a resource. This will be formatted as `W/"<etag_value>"` and is used to specify the `If-Match` header value on subsequent updates.')
content.append('')
content.append('definitions:')
content.append('  UpdateBody:')
content.append('    type: object')
content.append('    required:')

for field in required:
  content.append('    - ' + field)

content.append('    properties:')

for name, path in paths.items():
  content.append('        ## ' + name.replace('-', ' ').title())
  summary = summaries[name]
  if summary:
    summary = summary.replace("\n","\n      ")
    content.append('        _Description_')
    content.append('        ')
    content.append('        ' + summary)
  if notes[name]:
    content.append('        ')
    content.append('        _Notes_')
    content.append('        ' + notes[name].replace("\n","\n        "))

# print('\n'.join(content))

outputFile = open(filename[:-5] + '.yaml', 'w')
outputFile.write('\n'.join(content))
outputFile.close()


