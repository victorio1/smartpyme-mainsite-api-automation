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
        "phone":"902292248",
        "email":"automationtest1@mailinator.com",
        "message":"Automation Testing",
        "emailReceptor":"automationtesting2@mailinator.com"
     }
    """
    When method POST
    Then status 201

