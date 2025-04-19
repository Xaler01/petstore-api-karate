Feature: Update pet's name and status / Actualizar el nombre y el status de la mascota a "sold"

  Scenario: Update a pet
    * def updatedName = karate.get('name', 'Nombre no actualizado')
    * def payload =
    """
    {
      "id": #(id),
      "name": "#(updatedName)",
      "status": "sold"
    }
    """
    Given url baseUrl + '/pet'
    And request payload
    When method PUT
    Then status 200
    And match response.id == id
    And match response.status == 'sold'
    And match response.name == updatedName
