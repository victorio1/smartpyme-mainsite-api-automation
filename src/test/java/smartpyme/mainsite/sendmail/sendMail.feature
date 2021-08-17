Feature: Sen Mail
  This service allows to the client
  send an email to SmartPyme MainSite Server
  throught a lot of information

  Background:
    * url baseUrlMainSite
    * header Content-Type = 'application/json'

  @ignore
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

