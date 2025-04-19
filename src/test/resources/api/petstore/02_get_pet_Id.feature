Feature: Previously entered pet / Consultar la mascota ingresada previamente.

  Scenario: Get each pet from file
    * def pets = read('classpath:data/pets.json')
    * def result = []
    * def getPetById =
    """
    function(pet) {
      karate.log('Consultando pet con ID:', pet.id);
      var res = karate.call('classpath:api/petstore/get_pet_by_id_single.feature', pet);
      result.push(res);
    }
    """
    * karate.forEach(pets, getPetById)
