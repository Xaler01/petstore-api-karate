Feature: Add one pet / Añadir una mascota

  Scenario: Add a pet
    Given url baseUrl + '/pet'
    And request { id: '#(id)', name: '#(name)', status: '#(status)' }
    When method POST
    Then status 200
    And match response.id == id
    And match response.name == name
    And match response.status == status
