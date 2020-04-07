# fhir.cerner.com

The public facing API documentation for Cerner's implementation of the FHIR<sup>®</sup> standard.

## Usage

### Layouts
We've added attributes at the top of some md files to assign a layout. These are usually only needed for pages that aren't actual API documentation (our compilation rule uses that layout attribute before falling back to the api layout).

### Versions and Solutions
There are preprocessing rules that use folder matching to add version and solution attributes to all md files for the API. The only thing you need to do to make this work is put resource documentation in /\[solution]/\[version]/ folder path.

The version and solution attributes are currently used to flex the class, links, and navigation for the API documentation.

### Generating a field table

#### Definition Tables
Create and Update operations typically require JSON bodies which can be tedious to document manually through markdown. To simplify this process and to improve consistency we have added the `definition_table` helper to generate a table from a yaml content file.

The `definition_table` helper requires 3 parameters: content, action, and version.
- `content` indicates which content file to load.
- `version` indicates the version of the content file.
- `action` indicates which action specific variations defined in the content file to reflect in the generated table. Typically the action will be :create or :update. The available actions are defined in the content files themselves.

Generating a field table is done by invoking the `definition_table` method through an ERB call in whichever documentation file needs the table.

For example, the DSTU2 version of DocumentReference Create can be generated using

    <%= definition_table(:document_reference, :create, :dstu2) %>

Whereas other versions of AllergyIntolerance Update can be generated (assuming appropriate definitions are available) using

    <%= definition_table(:allergy_intolerance, :update, :stu3) %>

In actuality, the `version` parameter references a subfolder in `lib/resources` where the content files for that version are stored. Thus `definition_table(:document_reference, :create, :dstu2)` is referencing `lib/resources/dstu2/document_reference.yaml`. Adding new versions or new content files is simply a matter of creating an appropriately named folder and content file.

`definition_table` reads these fields from the resource's content yaml definition:
- name
- field_name_base_url
- fields
  - name
  - required
  - type
  - description
  - children
    - nested fields
  - example
  - note
  - url
  - action

#### Terminology Tables
The `terminolgy_table` helper is available to generate a terminology binding table from the same yaml content file as `definition_table`.

The `terminolgy_table` helper requires 2 parameters: content and version
- `content` indicates which content file to load.
- `version` indicates the version of the content file.

Generating a terminology table is done by invoking the `terminology_table` method through an ERB call in whichever documentation file needs the table.

For example, the DSTU2 version of AllergyIntolerance can be generated using

    <%= terminology_table(:allergy_intolerance, :dstu2) %>

The `version` parameter processing is handled the same as `definition_table`.

`terminology_table` reads these fields from the resource's content yaml definition:
- name
- fields
  - name
  - note
  - binding
    - terminology
      - display
      - note
      - system
      - values

##### Content YAML

The content is defined in YAML files and most fields are optional. If they are not provided, the resulting table cell will just be empty.

- field_name_base_url: `definition_table` will generate nested links for each field prepended with this url
- fields: The list of defined fields
    - name: The name of the field. This will be generated as a link based on `field_name_base_url`
    - required: Whether or not the field is required. This is not necessarily whether the field is required by the FHIR<sup>®</sup> standard, but rather whether it is required by our server implementation.
    - type: The type of the field. If found in `lib/resources/<version>/types.yaml`, this field will be linked to the specified resource.
    - description: The description of the field.
    - example: An example of how the field should be populated. The generated examples will be enclosed in &lt;pre&gt; tags to preserve formatting.
    - note: Additional implementation notes.
    - children: A list of nested fields. Each nested field item has the same structure as this `fields` list.
    - url: Overrides the `field_name_base_url` generated URL if defined.
    - binding: A list of terminology bindings supported for the field.
      - description: Describes the purpose / intent of the binding.
      - terminology: The list of terminologies supported by the field
        - display: The terminology's display value.
        - notes: Additional notes about the binding implementation.
        - system: The actual system URI from which values may be returned.
        - values: A list of individually supported values from the system.

Standard YAML formatting rules apply

##### Action

In addition to the fields above, each field can have an `action` field which indicates to which action or actions the field applies. When defined, the field will only be included when generating a table with the specified action. Multiple actions are supported as well and can be defined as a list

    Make the field apply to a single action
    - name: subject
      ...
      action: create

    Make the field apply to multiple actions
    - name: subject
      ...
      action:
      - create
      - update

Similarly field values can be flexed per action as well

  <pre>Alter the required and note values for update and create
  - name: id
    required:
    - update: 'Yes'
    - create: 'No'
    type: id
    description: The logical id of the resource to update.
    example: |
      {
        "id": "123412"
      }
    note:
    - update: The id value must match the AllergyIntolerance/&lt;id&gt; value.
    - create: The id field <b>must not</b> be set when performing an update operation.</pre>

The name of the action isn't limited to create and update, but only one action can be used at a time when generating a field table.

#### Linking

Linking is supported in a few forms

##### Field names

The field names will be automatically linked based on the `base_field_name_url` unless overridden by a field's `url` value.

##### Type names

The Type table cell will generate links based on URLs key-value pairs defined in `lib/resources/<version>/types.yaml`. Any word found in a `type` field will be replaced with the specified URL.

##### Formatting Tags

The `description` and `note` fields also support linking via the use of \`\` and `[]` tags. Words enclosed in \`\` tags will be linked according to the `types.yaml` file, if possible, or just formatted as `<code>` tags if not. Words enclosed in `[]` will be assumed to be references to other fields in the same table.

In general, it is best to not use \`\` tags in the `type` field, although it is possible. There can be conflicts which may result in duplicate replacements and unintended results.
