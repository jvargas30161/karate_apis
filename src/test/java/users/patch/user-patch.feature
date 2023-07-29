Feature: Patch user regres

  Scenario: Patch a user 1
    Given url "https://reqres.in" + "/api/users/" + "1"
    When method patch
    Then status 200

  Scenario: Patch a user 2
    Given url "https://reqres.in" + "/api/users/" + "2"
    When method patch
    Then status 200

  Scenario: Patch a user 3
    Given url "https://reqres.in" + "/api/users/" + "3"
    When method patch
    Then status 200

  Scenario: Patch a user 4
    Given url "https://reqres.in" + "/api/users/" + "4"
    When method patch
    Then status 200

  Scenario: Patch a user 5
    Given url "https://reqres.in" + "/api/users/" + "5"
    When method patch
    Then status 200

  Scenario: Get a list of user and match
    Given url "https://reqres.in" + "/api/users/" + "1"
    When method get
    Then status 200
    And match $ == {"data": {"id": 1,"email": "george.bluth@reqres.in","first_name": "George","last_name": "Bluth","avatar": "https://reqres.in/img/faces/1-image.jpg"},"support": {"url": "https://reqres.in/#support-heading","text": "To keep ReqRes free, contributions towards server costs are appreciated!"}}

  Scenario: Get a list of user with file
    * def jsonResponse = read('../json/patch_users.json')
    Given url "https://reqres.in" + "/api/users/" + "10"
    When method get
    Then status 200
    And match $ == {"data": {"id": 10,"email": "byron.fields@reqres.in","first_name": "Byron","last_name": "Fields","avatar": "https://reqres.in/img/faces/10-image.jpg"},"support": {"url": "https://reqres.in/#support-heading","text": "To keep ReqRes free, contributions towards server costs are appreciated!"}}
    And match $ == jsonResponse
    And match $ == read('../json/patch_users.json')




