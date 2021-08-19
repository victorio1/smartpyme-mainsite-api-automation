Feature: Create Category
  This service allows to the client and
  create his category in SmartPyme MainSite
  name, description

  Background:
    * url baseUrlMainSite
    * header Content-Type = 'application/json'

  Scenario: Verify Create Category Passed
    Given path '/api/categories'
    And request
    """
     {
      "name":"Categoria Test Automation",
      "description":"Descripcion Categoria Test Automation"
     }
    """
    When method POST
    Then status 201

