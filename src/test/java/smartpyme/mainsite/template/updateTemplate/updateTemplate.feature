Feature: Update Template
  This service allows to the client
  update his template in SmartPyme MainSite
  title, description, keywords and image

  Background:
    * url baseUrlMainSite
    * header Content-Type = 'application/json'

  Scenario Outline: Verify Create Template Passed
    * def CreateTemplateResponse = call read('classpath:smartpyme/common/createTemplate.feature')
    * def TemplateIdResponse = CreateTemplateResponse.response.result.Id
    * def TitleIdResponse = CreateTemplateResponse.response.result.Title
    * def DescriptionIdResponse = CreateTemplateResponse.response.result.Description
    * def ImageIdResponse = CreateTemplateResponse.response.result.Image
    * def KeywordsIdResponse = CreateTemplateResponse.response.result.Keywords
    Given path '/api/templates/' + TemplateIdResponse
    And request
    """
    {
        "title":"<title>",
        "description":"<description>",
        "image":"<image>",
        "keywords":"<keywords>"
    }
    """
    When method PUT
    Then status 200
    And match response.result.Title == TitleIdResponse
    And match response.result.Description == DescriptionIdResponse
    And match response.result.Image == ImageIdResponse
    And match response.result.Keywords == KeywordsIdResponse
    And match response.result.Title == "#string"
    And match response.result.Description == "#string"
    And match response.result.Image == "#string"
    And match response.result.Keywords == "#string"

    Examples:
      |read('updateTemplate-data.csv')|