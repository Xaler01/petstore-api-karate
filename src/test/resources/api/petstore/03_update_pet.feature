Feature: Update pet's name and status / Actualizar el nombre y el status de la mascota a "Sold"

    Scenario: Update all pets
        * def petsToUpdate = read('classpath:data/pets-to-update.json')
        * def updatePet = function(pet){ karate.call('classpath:api/petstore/update_pet_single.feature', pet) }
        * karate.forEach(petsToUpdate, updatePet)
        * print 'Todas las mascotas fueron actualizadas exitosamente.'
