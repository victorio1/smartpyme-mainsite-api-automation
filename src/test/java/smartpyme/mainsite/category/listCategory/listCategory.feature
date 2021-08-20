Feature: This service allows to get the data

  Background:
    * url baseUrlMainSite

    Scenario: List Category Passed
      * def CreateCategoryResponse = call read('classpath:smartpyme/common/createCategory.feature')
      * def CategoryIdResponse = CreateCategoryResponse.response.result.Id
      * def NameResponse = CreateCategoryResponse.response.result.Name
      * def DescriptionResponse = CreateCategoryResponse.response.result.Description
      Given path '/api/categories/' + CategoryIdResponse
      When method GET
      Then status 200
      And match response.result.Name == NameResponse
      And match response.result.Description == DescriptionResponse
      And match response.result.Name == "#string"
      And match response.result.Description == "#string"
