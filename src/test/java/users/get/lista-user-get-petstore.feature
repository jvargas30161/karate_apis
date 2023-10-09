Feature: Get recuperación de maria en Petstore

  Background:
    * url 'https://petstore.swagger.io/v2'

Scenario: Recuperar los datos del usuario creado
Given path '/user/maria'
When method get
Then status 200
And match response == { "id": 11, "username": "maria", "firstName": "maria", "lastName": "alex", "email": "maria@correo.com", "password": "123456", "phone": "123456789", "userStatus": 0 }