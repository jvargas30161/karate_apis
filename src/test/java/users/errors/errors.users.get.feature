Feature: Get errors login unsuccesful regres

  Scenario: Get errors login unsuccesful regres
    Given url "https://reqres.in/api/login"
    When method POST
    Then status 400

  Scenario: Get errors login unsuccesful regres with respose
    * def jsonResponse = read('../json/login2_get.json')
    Given url "https://reqres.in/api/login"
    When method POST
    Then status 400
    And match $ == jsonResponse
    And match $ == read('../json/login2_get.json')