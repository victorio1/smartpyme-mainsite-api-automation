Feature: Create Contact
  This service allows to the client and
  create his contacts in SmartPyme MainSite
  across name, email and cellphone

  Background:
    * url baseUrlMainSite
    * header Content-Type = 'application/json'

  Scenario Outline: Verify Create Contact Passed
    Given path '/api/contacts'
    And request
    """
     {
      "fullName":"<fullName>",
      "phone":"<phone>",
      "email":"<email>",
      "message":"<message>",
      "emailReceptor":"<emailReceptor>"
     }
    """
    When method POST
    Then status 201
    And match response.result.FullName == '<fullName>'
    And match response.result.Phone == '<phone>'
    And match response.result.Email == '<email>'
    And match response.result.Message == '<message>'
    And match response.result.FullName == "#string"
    And match response.result.Phone == "#string"
    And match response.result.Email == "#string"
    And match response.result.Message == "#string"

    Examples:
    |read('createContact-data.csv')|

