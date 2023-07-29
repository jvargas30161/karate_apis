Feature: Delete user regres

  Scenario: Delete a user
    Given url "https://reqres.in" + "/api/users/" + "1"
    When method Delete
    Then status 204

  Scenario: Delete a user
    Given url "https://reqres.in" + "/api/users/" + "2"
    When method Delete
    Then status 204

  Scenario: Delete a user
    Given url "https://reqres.in" + "/api/users/" + "3"
    When method Delete
    Then status 204

  Scenario: Delete a user
    Given url "https://reqres.in" + "/api/users/" + "4"
    When method Delete
    Then status 204

  Scenario: Delete a user
    Given url "https://reqres.in" + "/api/users/" + "5"
    When method Delete
    Then status 204

  Scenario: Delete a user
    Given url "https://reqres.in" + "/api/users/" + "15"
    When method Delete
    Then status 204