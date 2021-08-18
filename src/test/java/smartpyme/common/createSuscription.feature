Feature: Create Suscriptions
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
        "fullName":"Eduardo Oscar Gomez Victorio",
        "email":"test1@globant.com",
        "phone":910534676
      }
      """
    When method POST
    Then status 201
