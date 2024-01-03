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
content.append('    patch:')
content.append('      description: |')
content.append('        # Patch Operations')
content.append('')
## insert summary text from md

for name, path in paths.items():
  content.append('        ## ' + name.replace('-', ' ').title())
  summary = summaries[name]
  if summary:
    summary = summary.replace("\n","\n      ")
    content.append('        _Description_')
    content.append('        ')
    content.append('        ' + summary)
  content.append('        ')
  content.append('        |Path|Operation|Value Type|')
  content.append('        |---|---|---|')

  path = '[`' + path + '`](' + urls[name] + ')'
  content.append('        |' + path + '|`' + operations[name] + '`|' + types[name] + '|')
  content.append('        ')
  content.append('        _Example_')
  content.append('        ')
  content.append('        ````json')
  content.append('        ' + examples[name].replace("\n","\n        "))
  content.append('        ````')
  if notes[name]:
    content.append('        ')
    content.append('        _Notes_')
    content.append('        ' + notes[name].replace("\n","\n        "))

content.append('      consumes:')
content.append('      - application/fhir+json')
content.append('      produces:')
content.append('      - application/json-patch+json')
content.append('      parameters: ')
content.append('        - name: patchBody')
content.append('          in: body')
content.append('          required: true')
content.append('          schema: {')
content.append('            "$ref": "#definitions/PatchBody"')
content.append('          }')
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
content.append('')
content.append('definitions:')
content.append('      PatchBody:')
content.append('        type: array')
content.append('        minItems: 1')
content.append('        items:')
content.append('          type: object')
content.append('          required:')
content.append('          - op')
content.append('          - path')
content.append('          properties:')
content.append('            op:')
content.append('              type: string')
content.append('              enum:')

list(set(ops)).sort()
for op in ops:
  content.append('              - ' + op)

content.append('            path:')
content.append('              type: string')
content.append('            value:')
content.append('              type: string')

# print('\n'.join(content))

outputFile = open(filename[:-5] + '.yaml', 'w')
outputFile.write('\n'.join(content))
outputFile.close()


