Feature: Create Category
  This service allows to the client and
  create his category in SmartPyme MainSite
  name, description

  Background:
    * url baseUrlMainSite
    * header Content-Type = 'application/json'

  Scenario Outline: Verify Create Category Passed
    Given path '/api/categories'
    And request
    """
     {
      "name":"<Name>",
      "description":"<description>"
     }
    """
    When method POST
    Then status 201
    And match response.result.Name == '<Name>'
    And match response.result.Description == '<description>'
    And match response.result.Name == "#string"
    And match response.result.Description == "#string"

    Examples:
      |read('createCategory-data.csv')|

