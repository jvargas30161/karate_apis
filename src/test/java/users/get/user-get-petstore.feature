Feature: Get user regres

  Scenario: Get a user
    Given url "https://reqres.in" + "/api/users/" + "1"
    When method get
    Then status 200

  Scenario: Get a user
    Given url "https://reqres.in" + "/api/users/" + "2"
    When method get
    Then status 200

  Scenario: Get a user
    Given url "https://reqres.in" + "/api/users/" + "3"
    When method get
    Then status 200

  Scenario: Get a list of user
    Given url "https://reqres.in/api/users?page=1"
    When method get
    Then status 200
    And match $ == {"page":1,"per_page":6,"total":12,"total_pages":2,"data":[{"id":1,"email":"george.bluth@reqres.in","first_name":"George","last_name":"Bluth","avatar":"https://reqres.in/img/faces/1-image.jpg"},{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://reqres.in/img/faces/2-image.jpg"},{"id":3,"email":"emma.wong@reqres.in","first_name":"Emma","last_name":"Wong","avatar":"https://reqres.in/img/faces/3-image.jpg"},{"id":4,"email":"eve.holt@reqres.in","first_name":"Eve","last_name":"Holt","avatar":"https://reqres.in/img/faces/4-image.jpg"},{"id":5,"email":"charles.morris@reqres.in","first_name":"Charles","last_name":"Morris","avatar":"https://reqres.in/img/faces/5-image.jpg"},{"id":6,"email":"tracey.ramos@reqres.in","first_name":"Tracey","last_name":"Ramos","avatar":"https://reqres.in/img/faces/6-image.jpg"}],"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}


  Scenario: Get a list of user with file
    * def jsonResponse = read('../json/list_of_users.json')
    Given url "https://reqres.in/api/users?page=1"
    When method get
    Then status 200
    And match $ == {"page":1,"per_page":6,"total":12,"total_pages":2,"data":[{"id":1,"email":"george.bluth@reqres.in","first_name":"George","last_name":"Bluth","avatar":"https://reqres.in/img/faces/1-image.jpg"},{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://reqres.in/img/faces/2-image.jpg"},{"id":3,"email":"emma.wong@reqres.in","first_name":"Emma","last_name":"Wong","avatar":"https://reqres.in/img/faces/3-image.jpg"},{"id":4,"email":"eve.holt@reqres.in","first_name":"Eve","last_name":"Holt","avatar":"https://reqres.in/img/faces/4-image.jpg"},{"id":5,"email":"charles.morris@reqres.in","first_name":"Charles","last_name":"Morris","avatar":"https://reqres.in/img/faces/5-image.jpg"},{"id":6,"email":"tracey.ramos@reqres.in","first_name":"Tracey","last_name":"Ramos","avatar":"https://reqres.in/img/faces/6-image.jpg"}],"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
    And match $ == jsonResponse
    And match $ == read('../json/list_of_users.json')


  Scenario: Get a list of user with file other data
    * def jsonResponse = read('../json/list2_of_users.json')
    Given url "https://reqres.in/api/users?page=1"
    When method get
    Then status 200
    And match $ == jsonResponse
    And match $ == read('../json/list_of_users.json')

  Scenario: Post login succeful
    Given url "https://reqres.in/api/login"
    When method GET
    Then status 200

  Scenario: Post login succeful with response
    * def jsonResponse = read('../json/login1_get.json')
    Given url "https://reqres.in/api/login"
    When method GET
    Then status 200
    And match $ == jsonResponse
    And match $ == read('../json/login1_get.json')

  Scenario: Get a delayed response 1
    Given url "https://reqres.in" + "/api/users?/delay/" + "1"
    When method get
    Then status 200

  Scenario: Get a delayed response 2
    Given url "https://reqres.in" + "/api/users?/delay/" + "2"
    When method get
    Then status 200

  Scenario: Get a delayed response 3
    Given url "https://reqres.in" + "/api/users?/delay/" + "3"
    When method get
    Then status 200

  Scenario: Get a delayed with response and file json
    * def jsonResponse = read('../json/list_of_users.json')
    Given url "https://reqres.in" + "/api/users?/delay/" + "1"
    When method get
    Then status 200
    And match $ == jsonResponse
    And match $ == read('../json/list_of_users.json')