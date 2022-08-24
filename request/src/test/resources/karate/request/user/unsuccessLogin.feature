Feature: Log in into website
  As QA automation
  I want Log in into the website
  To valid the status code and response

  Background: consume the service
    * url url

  Scenario: Unsuccessful Log in
    * def logRequest = read('classpath:karate/request/user/unseccessLogRequest.json')
    * def logResponse = read('classpath:karate/request/user/unsuccessLogResponse.json')
    Given path 'login'
    And request logRequest
    When method POST
    Then status 400
    And match response == logResponse