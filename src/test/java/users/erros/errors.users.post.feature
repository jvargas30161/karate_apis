Feature: Post errors user regres

  Scenario: Post a register unsucceful
    * def jsonResponse = read('../json/post_unsucceful.json')
    Given url "https://reqres.in/api/register"
    When method POST
    Then status 400
    And match $ == {"error": "Missing password","error": "Missing email or username"}
    And match $ == jsonResponse