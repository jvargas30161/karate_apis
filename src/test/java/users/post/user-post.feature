Feature: Post user regres

#  Background:
#    * url 'https://regres.in/api'
#    * header Accept = 'application/json'
#    * def expectedOutput = read("post_create1.json")

  Scenario: Post a user 1
    Given url "https://reqres.in" + "/api/users/" + "1"
    When method post
    Then status 201

  Scenario: Post a user 2
    Given url "https://reqres.in" + "/api/users/" + "2"
    When method post
    Then status 201

  Scenario: Post a user 3
    Given url "https://reqres.in" + "/api/users/" + "3"
    When method post
    Then status 201

  Scenario: Post a user
    Given url "https://reqres.in/api/users"
    And request {"name": "alexander","job": "teacher"}
    When method POST
    Then status 201

  Scenario: Post with read response from file
    * def jsonResponse = read('../json/post_create1.json')
    Given url "https://reqres.in/api/users"
    And request {"name": "jorge","job": "musician"}
    When method POST
    Then status 201
    And match $ == jsonResponse
#    And match response == expectedOutput
    And print response

#  Scenario: Put a list of user with file not found
#    * def jsonResponse = read('../json/post1_not_found.json')
#    Given url "https://reqres.in/api/unknown/23"
#    When method POST
#    Then status 404
#    And match $ == jsonResponse

  Scenario: Post a user
    Given url "https://reqres.in/api/users"
    And request {"name": "Nico","job": "futboll player"}
    When method POST
    Then status 201

  Scenario: Post a user
    Given url "https://reqres.in/api/users"
    And request {"name": "Nico","job": "futboll player"}
    When method POST
    Then status 201



