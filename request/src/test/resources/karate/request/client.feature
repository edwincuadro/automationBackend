Feature: Get service client
  As QA automation
  I want to consult a client
  To validate the status code and response

  Background: consuming service
    * url url

    Scenario: Check the service GET method
      Given path 'users', '2'
      When method get
      Then status 200