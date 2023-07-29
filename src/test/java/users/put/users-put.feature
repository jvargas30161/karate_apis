Feature: Put user regres

  Scenario: Put a user 1
    Given url "https://reqres.in" + "/api/users/" + "1"
    When method PUT
    Then status 200

  Scenario: Put a user 2
    Given url "https://reqres.in" + "/api/users/" + "2"
    When method PUT
    Then status 200

  Scenario: Put a user 3
    Given url "https://reqres.in" + "/api/users/" + "3"
    When method PUT
    Then status 200

  Scenario: Put a user 4
    Given url "https://reqres.in" + "/api/users/" + "4"
    When method PUT
    Then status 200

  Scenario: Put a user 5
    Given url "https://reqres.in" + "/api/users/" + "5"
    When method PUT
    Then status 200

  Scenario: Post with read response from file
    * def jsonResponse = read('../json/put_update.json')
    Given url "https://reqres.in" + "/api/users/" + "2"
    And request {"name": "morpheus","job": "zion resident"}
    When method PUT
    Then status 200
    And match $ == jsonResponse
#    And match response == expectedOutput
    And print response