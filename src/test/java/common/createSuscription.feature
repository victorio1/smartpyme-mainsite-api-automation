Feature: Create Users
  This service allows to the client and
  create his users in SmartPyme MainSite
  across name, email and cellphone

  Background:
    * url baseUrlMainSite
    * header Content-Type = 'application/json'

    Scenario Outline: Verify Create Suscription Passed
      Given path '/api/subscribers'
      And request
      """
      {
        "fullName":"<fullName>",
        "email":"<email>",
        "phone":<phone>
      }
      """
      When method POST
      Then status 201
      And match response.result.FullName == '<fullName>'
      And match response.result.Email == '<email>'
      And match response.result.Phone == '<phone>'
      And match response.result.FullName == "#string"
      And match response.result.Email == "#string"
      And match response.result.Phone == "#string"

      Examples:
      |read('createSuscription-data.csv')|