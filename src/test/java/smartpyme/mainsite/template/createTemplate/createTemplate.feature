Feature: Create Template
  This service allows to the client
  create a template from his information

  Background:
    * url baseUrlMainSite
    * header Content-Type = 'application/json'

  Scenario Outline: Verify Create Template Passed
    Given path '/api/templates'
    And request
    """
      {
          "title":"<title>",
          "description":"<description>",
          "image":"<image>",
          "keywords":"<keywords>",
          "categoriesId":<categoriesId>
      }
    """
    When method POST
    Then status 201

    Examples:
    |read('createTemplate-data.csv')|
