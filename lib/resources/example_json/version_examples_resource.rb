# frozen_string_literal: true

module Cerner
  module Resources
    R4_APPOINTMENT_ENTRY ||= {
      'fullUrl': 'url/Resource/id',
      'resource': {
        'resourceType': 'Resource',
        'id': 'id',
        'meta': {
          'versionId': '1',
          'lastUpdated': '2020-07-06T18:46:08.000Z'
        },
        'text': {
          'status': 'generated',
          'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Resource</b></p></div>'
        },
        'other': 'fields'
    }.freeze

    # TODO-new-solution: add other JSON examples as needed
end
