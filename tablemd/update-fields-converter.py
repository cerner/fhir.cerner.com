import json
import sys
import re

def getType(fieldName, fieldType):
  if '[x]' in fieldName or '|' in fieldType or ',' in fieldType:
    return 'multi'
  elif 'integer' in fieldType:
    return 'integer'
  elif 'boolean' in fieldType:
    return 'boolean'
  elif 'datatypes.html#codeableconcept' in fieldType:
    return 'CodeableConcept'
  elif 'references.html' in fieldType:
    return 'Reference'
  elif 'datatypes.html#annotation' in fieldType:
    return 'Annotation'
  elif 'datatypes.html#period' in fieldType:
    return 'Period'
  elif 'extensibility.html' in fieldType or '.extension' in fieldName:
    return 'Extension'
  elif 'datatypes.html#attachment' in fieldType:
    return 'Attachment'
  elif 'datatypes.html#quantity' in fieldType:
    return 'Quantity'
  elif 'datatypes.html#simplequantity' in fieldType:
    return 'SimpleQuantity'
  elif 'datatypes.html#identifier' in fieldType:
    return 'Identifier'
  elif 'backboneelement.html' in fieldType:
    return 'BackboneElement'

  elif 'datatypes.html#id' in fieldType:
    return 'string'
  elif 'datatypes.html#datetime' in fieldType:
    return 'string'
  elif 'datatypes.html#code' in fieldType:
    return 'string'
  elif 'datatypes.html#instant' in fieldType:
    return 'string'
  elif 'datatypes.html#date' in fieldType:
    return 'string'
  elif 'datatypes.html#string' in fieldType:
    return 'string'
  elif 'base64binary' in fieldType:
    return 'string'
  elif 'canonical' in fieldType:
    return 'string'

def codeableConcept(content, indent):
  content.append(indent + 'type: object')
  content.append(indent + 'properties:')
  content.append(indent + '  text:')
  content.append(indent + '    type: string')
  content.append(indent + '  coding:')
  content.append(indent + '    type: array')
  content.append(indent + '    items:')
  content.append(indent + '      type: object')
  content.append(indent + '      properties:')
  content.append(indent + '        system:')
  content.append(indent + '          type: string')
  content.append(indent + '        code:')
  content.append(indent + '          type: string')

def reference(content, indent):
  content.append(indent + 'type: object')
  content.append(indent + 'properties:')
  content.append(indent + '  reference:')
  content.append(indent + '    type: string')

def period(content, indent):
  content.append(indent + 'type: object')
  content.append(indent + 'properties:')
  content.append(indent + '  start:')
  content.append(indent + '    type: string')
  content.append(indent + '  end:')
  content.append(indent + '    type: string')

def simpleQuantity(content, indent):
  content.append(indent + 'type: object')
  content.append(indent + 'properties:')
  content.append(indent + '  value:')
  content.append(indent + '    type: number')
  content.append(indent + '  unit:')
  content.append(indent + '    type: string')
  content.append(indent + '  system:')
  content.append(indent + '    type: string')
  content.append(indent + '  code:')
  content.append(indent + '    type: string')

def quantity(content, indent):
  simpleQuantity(content, indent)
  content.append(indent + '  comparator:')
  content.append(indent + '    type: string')

def annotation(content, indent):
  content.append(indent + 'type: object')
  content.append(indent + 'properties:')
  content.append(indent + '  authorReference:')
  reference(content, indent + '    ')
  content.append(indent + '  time:')
  content.append(indent + '    type: string')
  content.append(indent + '  text:')
  content.append(indent + '    type: string')

def extension(content, indent):
  content.append(indent + 'type: object')
  content.append(indent + 'description: See the StructureDefinition of this extension for further formatting details.')
  content.append(indent + 'properties:')
  content.append(indent + '  url:')
  content.append(indent + '    type: string')

def attachment(content, indent):
  content.append(indent + 'type: object')
  content.append(indent + 'description: The document or URL of the document along with critical metadata to prove content has integrity.')
  content.append(indent + 'required:')
  content.append(indent + '- contentType')
  content.append(indent + '- data')
  content.append(indent + 'properties:')
  content.append(indent + '  contentType:')
  content.append(indent + '    type: string')
  content.append(indent + '    description: Identifies the type of the data in the attachment and allows a method to be chosen to interpret or render the data. Includes MIME type parameters such as charset where appropriate.')
  content.append(indent + '  data:')
  content.append(indent + '    type: string')
  content.append(indent + '    description: The actual data of the attachment - a sequence of bytes, base64 encoded.')
  content.append(indent + '  title:')
  content.append(indent + '    type: string')
  content.append(indent + '    description: A label or set of text to display in place of the data.')
  content.append(indent + '  creation:')
  content.append(indent + '    type: string')
  content.append(indent + '    description: The date that the attachment was first created.')

def identifier(content, indent):
  content.append(indent + 'type: object')
  content.append(indent + 'properties:')
  content.append(indent + '  use:')
  content.append(indent + '    type: string')
  content.append(indent + '  type:')
  codeableConcept(content, indent + '    ')
  content.append(indent + '  system:')
  content.append(indent + '    type: string')
  content.append(indent + '  value:')
  content.append(indent + '    type: string')
  content.append(indent + '  period:')
  period(content, indent + '    ')
  content.append(indent + '  assigner:')
  reference(content, indent + '    ')

def element(content, indent):
  content.append(indent + 'type: object')
  content.append(indent + 'properties:')
  content.append(indent + '  :')
  content.append(indent + '    type: ')

  return indent + '  '

def addFields(content, indent, fieldName, fieldType, children, childrenTypes):
  # print(fieldName + ': ' + fieldType)
  if 'CodeableConcept' == fieldType:
    codeableConcept(content, indent)
  elif '[CodeableConcept]' == fieldType:
    content.append(indent + 'type: array')
    content.append(indent + 'items:')
    codeableConcept(content, indent + '  ')
  elif 'Reference' == fieldType:
    reference(content, indent)
  elif '[Reference]' == fieldType:
    content.append(indent + 'type: array')
    content.append(indent + 'items:')
    reference(content, indent + '  ')
  elif 'Period' == fieldType:
    period(content, indent)
  elif 'Annotation' == fieldType:
    annotation(content, indent)
  elif '[Annotation]' == fieldType:
    content.append(indent + 'type: array')
    content.append(indent + 'items:')
    annotation(content, indent + '  ')
  elif 'Attachment' == fieldType:
    attachment(content, indent)
  elif 'Quantity' == fieldType:
    quantity(content, indent)
  elif 'SimpleQuantity' == fieldType:
    simpleQuantity(content, indent)
  elif 'Identifier' == fieldType:
    identifier(content, indent)
  elif 'Extension' == fieldType:
    extension(content, indent)
  elif 'BackboneElement' == fieldType:
    content.append(indent + 'type: object')
    content.append(indent + 'properties:')
    # childIndent = element(content, indent) + indent
    # if '.' in fieldName:
    #   return

    # subChildren = dict()
    # subChildrenTypes = dict()
    # print('fieldName: ' + fieldName)
    # print('fieldChildren: ' + ', '.join(children[fieldName]))
    # fieldChildren = children[fieldName]

    # for childField in fieldChildren:
      # print('')
      # fieldChildNames = childField.split('.')
      # baseChildField = fieldChildNames[1]

      # if len(fieldChildNames) > 2:
        # childSubFields = '.'.join(fieldChildNames[1:])

        # print('baseChildField: ' + baseChildField + '; ' + str(len(fieldChildNames)))
        # print('childSubFields: ' + childSubFields)

        # if baseChildField not in subChildren:
        #   subChildren[baseChildField] = [childSubFields]
        # else:
        #   childFieldList = subChildren[baseChildField]
        #   childFieldList.append(childSubFields)

        # print('subChildren: ' + ', '.join(subChildren[baseChildField]))
        # subChildrenTypes[childSubFields] = childrenTypes[childField]
        # print('subChildrenType: ' + subChildrenTypes[childSubFields])

    # print('be: ' + fieldName)
    # for childField in fieldChildren:
      # childFieldType = childrenTypes[childField]
      # print('childField:' + childField + '; childFieldType: '+childFieldType+'; subChildren: ['+','.join(subChildren)+']; subChildrenTypes: [' + ','.join(subChildrenTypes))
      # addFields(content, childIndent + '  ', childField, childFieldType, subChildren, subChildrenTypes)



  elif '[BackboneElement]' == fieldType:
    # print('array be ' + fieldName)
    content.append(indent + 'type: array')
    content.append(indent + 'items:')
    childIndent = element(content, indent + '  ')
    addFields(content, childIndent, fieldName, 'BackboneElement', children, childrenTypes)

  elif 'string' == fieldType:
    content.append(indent + 'type: string')
  elif '[string]' == fieldType:
    content.append(indent + 'type: array')
    content.append(indent + 'items:')
    content.append(indent + '  type: string')
  elif 'multi' == fieldType:
    # can't define correctly in v2
    pass
  else:
    # print('dunno: ' + fieldName + '; ' + fieldType)
    content.append(indent + 'type: ' + fieldType)



if len(sys.argv) == 1:
  sys.exit

filename = sys.argv[1]

print('')
print('parsing file: ' + filename)
specVersion = 'dstu2' if 'dstu2' in filename else 'r4'

file = open(filename)
fileContent = file.read()
file.close()

patch = json.loads(fileContent)
file.close()

if (patch.get('table_name') != 'update'):
  sys.exit


baseFields = []
summaries = dict()
types = dict()
fhirTypes = dict()
urls = dict()
examples = dict()
examples2 = dict()
examples3 = dict()
examples4 = dict()
notes = dict()
childFields = dict()
childFieldTypes = dict()
required = []

resourceName = patch.get('name')
first = True

for field in patch.get('fields'):

  fieldName = field.get('name')

  # if '.' in fieldName:
  #   baseField = fieldName.split('.')[0]

  #   if baseField not in childFields:
  #     childFields[baseField] = [fieldName]
  #   else:
  #     childFieldList = childFields[baseField]
  #     childFieldList.append(fieldName)

  #   childFieldTypes[fieldName] = getType(fieldName, field.get('type').lower())
  #   continue

  baseFields.append(fieldName)

  urls[fieldName] = field.get('url')
  if field.get('example'): examples[fieldName] = field.get('example')
  if field.get('example2'): examples2[fieldName] = field.get('example2')
  if field.get('example3'): examples3[fieldName] = field.get('example3')
  if field.get('example4'): examples4[fieldName] = field.get('example4')
  notes[fieldName] = field.get('note')
  if field.get('required') and field.get('required').lower() == 'yes':
    required.append(fieldName)

  summary = []
  if field.get('description'):
    summary.append(field.get('description'))

  summaries[fieldName] = '\n'.join(summary)

  fhirTypes[fieldName] = field.get('type')
  fieldType = field.get('type').lower()
  if 'list' in fieldType:
    baseType = getType(fieldName, fieldType)
    if baseType:
      types[fieldName] = '[' + baseType + ']'
    else:
      # print(fieldName + ':x ' + fieldType)
      types[fieldName] = '[]'
  else:
    baseType = getType(fieldName, fieldType)
    if baseType:
      types[fieldName] = baseType
    else:
      print(fieldName + ':x ' + fieldType)
      types[fieldName] = 'string'

# BackboneElement
# Questionnaire


################ output

content = []
content.append('    put:')
content.append('      tags:')
content.append('        - ' + resourceName + ' ' + 'Write')
content.append('      description: |')
content.append('        # Update Operations')
content.append('')
## insert summary text from md

content.append('      operationId: millennium' + specVersion.upper() + resourceName.replace(' ', '') + 'Update')
content.append('      consumes:')
if specVersion == 'r4':
  content.append('      - application/fhir+json')
else:
  content.append('      - application/json+fhir')

content.append('      produces:')
if specVersion == 'r4':
  content.append('      - application/fhir+json')
else:
  content.append('      - application/json+fhir')

content.append('      parameters:')
content.append('        - name: id')
content.append('          in: path')
content.append('          description: |')
content.append('            The logical resource ID associated with the resource.')
content.append('          required: true')
content.append('          type: string')
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
content.append('        \'200\':')
content.append('          description: |')
content.append('            **OK**')
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
content.append('        default:')
content.append("          $ref: '#/responses/OperationOutcome'")
content.append('')
content.append('definitions:')
content.append('  UpdateBody:')
content.append('    type: object')
content.append('    required:')

for field in required:
  content.append('    - ' + field)

content.append('    properties:')

propIndent = '        '
for name in baseFields:
  content.append('      ' + name + ':')

  content.append(propIndent + 'description: |')
  summary = summaries[name]
  if summary:
    summary = summary.replace("\n","\n          ")
    # content.append(propIndent + '  _Description_')
    # content.append(propIndent + '  ')
    content.append(propIndent + '  ' + summary)
    if name == 'resourceType':
      content.append(propIndent + 'type: string')
      content.append(propIndent + 'enum:')
      content.append(propIndent + '- ' + resourceName.replace(' ', ''))
      continue
  # if fhirTypes[name]:
  #   content.append(propIndent + '  ')
  #   content.append(propIndent + '  _HL7:registered: FHIR:registered: standard type_')
  #   content.append(propIndent + '  ')
  #   content.append(propIndent + '  ' + fhirTypes[name])
  if notes[name]:
    content.append(propIndent + '  ')
    content.append(propIndent + '  _Notes_')
    content.append(propIndent + '  ' + notes[name].replace("\n","\n          "))
    content.append(propIndent + '  ')
  if name in examples:
    content.append(propIndent + '  _Examples_')
    content.append(propIndent + '  ')
    content.append(propIndent + '  ````json')
    content.append(propIndent + '  ' + examples[name].replace("\n","\n          "))
    content.append(propIndent + '  ````')
    if name in examples2:
      content.append(propIndent + '  ')
      content.append(propIndent + '  ````json')
      content.append(propIndent + '  ' + examples2[name].replace("\n","\n          "))
      content.append(propIndent + '  ````')
    if name in examples3:
      content.append(propIndent + '  ')
      content.append(propIndent + '  ````json')
      content.append(propIndent + '  ' + examples2[name].replace("\n","\n          "))
      content.append(propIndent + '  ````')
    if name in examples4:
      content.append(propIndent + '  ')
      content.append(propIndent + '  ````json')
      content.append(propIndent + '  ' + examples2[name].replace("\n","\n          "))
      content.append(propIndent + '  ````')

  fieldType = types[name]
  if name == 'resourceType':
    content.append(propIndent + 'type: string')
    content.append(propIndent + 'enum:')
    content.append(propIndent + '- ' + resourceName.replace(' ', ''))
  else:
    # if 'item' in name:
    #   print('item')
    #   print(childFields)
    #   print(fieldType)
    addFields(content, propIndent, name, fieldType, childFields, childFieldTypes)



# print('\n'.join(content))

outputFile = open(filename[:-5] + '.yaml', 'w')
outputFile.write('\n'.join(content))
outputFile.close()


