Feature: Log in into website
  As QA automation
  I want Log in into the website
  To valid the status code and response

  Background: consume the service
    * url url
    * def logRequest = read('classpath:karate/request/user/successLoginRequest.json')

  Scenario: Success Log in
    * def logResponse = read('classpath:karate/request/user/successLogResponse.json')
    Given path 'login'
    And request logRequest
    When method POST
    Then status 200
    And match response == logResponse
    And assert response.token == token

    Scenario Outline: Log in with invalid email
      Given path 'login'
      And request logRequest
      And request <email>
      When method POST
      Then status 400

      Examples:
        | email   |
        | 123     |
        | "#$%&"  |
        | "#null" |

