Feature:
  Delete Template
  This service allows to the client
  delete his template in SmartPyme MainSite
  title, description, keywords, image and updatedAt

  Background:
    * url baseUrlMainSite
    * header Content-Type = 'application/json'

  Scenario: Verify delete Template
    * def CreateTemplateResponse = call read('classpath:smartpyme/common/createTemplate.feature')
    * def TemplateIdResponse = CreateTemplateResponse.response.result.Id
    * def TitleIdResponse = CreateTemplateResponse.response.result.Title
    * def DescriptionIdResponse = CreateTemplateResponse.response.result.Description
    * def ImageIdResponse = CreateTemplateResponse.response.result.Image
    * def KeywordsIdResponse = CreateTemplateResponse.response.result.Keywords
    Given path '/api/templates/' + TemplateIdResponse
    When method DELETE
    Then status 200
    And match response.result.Title == TitleIdResponse
    And match response.result.Description == DescriptionIdResponse
    And match response.result.Image == ImageIdResponse
    And match response.result.Keywords == KeywordsIdResponse
    And match response.result.updatedAt == "#string"