Feature: Log in into website
  As QA automation
  I want Log in into the website
  To valid the status code and response

  Background: consume the service
    * url url

  Scenario: Success Log in
    * def logRequest = read('classpath:karate/request/user/successLoginRequest.json')
    * def logResponse = read('classpath:karate/request/user/successLogResponse.json')
    Given path 'login'
    And request logRequest
    When method POST
    Then status 200
    And match response == logResponse
    And assert response.token == token

