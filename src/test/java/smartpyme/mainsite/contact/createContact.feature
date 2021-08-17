Feature: Create Contact
  This service allows to the client and
  create his contacts in SmartPyme MainSite
  across name, email and cellphone

  Background:
    * url baseUrlMainSite
    * header Content-Type = 'application/json'

  Scenario: Verify Create Contact Passed
    Given path '/api/contacts'
    And request
    """
     {
      "fullName":"Eduardo Oscar Gomez Victorio",
      "phone":"910534676",
      "email":"test1@globant.com",
      "message":"Mensaje de Prueba",
      "emailReceptor":"test2@avantica.com"
     }
    """
    When method POST
    Then status 201

