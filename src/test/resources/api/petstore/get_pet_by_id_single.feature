Feature: Get pet by ID / Obtener mascota por ID

  Scenario: Get pet by ID
    Given url baseUrl + '/pet/' + id
    When method GET
    Then status 200 || 404
    * if (responseStatus == 200) karate.log('Pet encontrada:', response)
    * if (responseStatus == 404) karate.log('Pet no encontrada con ID:', id)
