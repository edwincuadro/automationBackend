Feature: Get service client
  As QA automation
  I want to consult a client
  To validate the status code and response

  Background: consuming service
    * url url

  Scenario: Check the service GET method
    * def responseClient = read('classpath:karate/request/user/responseClient.json')
    Given path 'users', '2'
    When method get
    Then status 200
    And match response == responseClient
    And assert response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"
    And assert response.data.email == email


    Scenario Outline: User that doesn't exist
      Given path 'users', <idUser>
      When method get
      Then status 404
      Examples:
        | idUser  |
        | 1996    |
        | "#&%?." |
        | "Edwin" |
        |  "  "   |

  Scenario Outline: Validate the email using unsopported data types

    Given path 'users',<email>
    When method get
    Then status 404

    Examples:
      | email     |
      |  12345    |
      | "_?+{"    |
      | "Daniela" |


