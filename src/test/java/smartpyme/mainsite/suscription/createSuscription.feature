Feature: Create Users
  This service allows to the client and
  create his users in SmartPyme MainSite
  across name, email and cellphone

  Background:
    * url baseUrlMainSite
    * header Content-Type = 'application/json'

    Scenario: Verify Create Suscription Passed
      Given path '/api/subscribers'
      And request
      """
      {
        "fullName":"Test Automation",
        "email":"test3.eduardo@mailinator.com",
        "phone":902292248
      }
      """
      When method POST
      Then status 201

