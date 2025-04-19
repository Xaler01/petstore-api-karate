Feature: Add multiple pets from JSON / Añadir múltiples mascotas desde JSON

    Background:
        * def pets = read('classpath:data/pets.json')

    Scenario: Add pets dynamically from file
        * def addPet = function(pet){ return karate.call('classpath:api/petstore/add_pet_single.feature', pet) }
        * def result = pets.map(addPet)
