# frozen_string_literal: true

module Cerner
    module Resources

      R4_HEALTH_CARDS_ISSUE_REQUEST ||= {
        'resourceType': 'Parameters',
        'parameter': [
          {
            'name': 'credentialType',
            'valueUri': 'https://smarthealth.cards#covid19'
          },
          {
            'name': 'credentialType',
            'valueUri': 'https://smarthealth.cards#immunization'
          }
        ]
    }.freeze
  
      R4_HEALTH_CARDS_RESPONSE ||= {
            'resourceType': 'Parameters',
            'parameter': [
                {
                    'name': 'verifiableCredential',
                    'valueString': 'eyJhbGciOiJFUzI1NiIsInppcCI6IkRFRiIsImtpZCI6IlhVTVR0Q2pfYUlFejdWaFo0Y05YLVdKd0V1ckxBWnQ0SjRPa2dvNEc5ZFkifQ.3VJNc9MwEP0rjLj6S24aJzkxlEM5FJhpCwemB1laJwJ9eCQ5aej4v7PrJKWH0ANHPL5I-_Te27f7xHSMbMU2KfVxVZbdRofc7gNIH1QRk1hrt5YQHIRCelu2kEQJsp5dLro651DP8hmXi7xteJtX0FRcdM3l4kKxjGmR2IrP-YI3y-VynrGtZKsn9k56l-ARa9-fZXe7XbG7KHxYl3XFF6UMoMAlLUwst5w9ZCzte6AXXyHoTovWwNUzBrVORNGKkDYgTNoUUgQV3x4OOR1exUm_1YovX8Voawenf4mkvSNTf2zeDu0PkIn6owjRZSTMis2KqqiQlG7fD04ZIEyA6Icg4W7qih0Lpy6Z9MYgGzFkDAXCHltH5sGY-2AQcHq_IurT4QzxF7SK7xHkhIUDibDaIB-7_nbj5c_PjnTXeguO4r0SwfiIN7ebvXDY5IhtrsEpCPikAysmn63GZD6IRBp82VR5xfOqxoJQCi3ESan3uD_myitCzWe8WiBA-uHQD7u_ZePDOGZn--Kv9_Xx5SAyhjppiFNwtjeQgEa9FVJqBwf9JywpXOXJWNzHBPa49TjojWmm1aMZlVGrUm4fJ6uT87pqyGjG-mOYk50OAjjy9nIWCPJSDmEqUTx32h4oason55SA8enTYNsp0Io-yq2H0Plg6RINCpl8IB2lY28EpXWDZsybax97jaGy8e_R1f9hdDyvz0ZX8X_NDv9x_A0.Swhe0EFn3flfcT1hg0_ZyWTPdANux9fpEZvKJpyeZFLqzlWQaqBns9ejc3Wdu9YbfeHpO1uj_6g2Ikn_lQA4HQ'
                }
            ]
        }.freeze
    end
end