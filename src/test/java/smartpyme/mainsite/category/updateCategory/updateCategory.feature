Feature: Update Category
  This service allows to the client
  update his category in SmartPyme MainSite
  name, description

  Background:
    * url baseUrlMainSite
    * header Content-Type = 'application/json'

  Scenario: Verify Create Category Passed
    * def CreateCategoryResponse = call read('classpath:smartpyme/common/createCategory.feature')
    * def CategoryIdResponse = CreateCategoryResponse.response.result.Id
    * def NameIdResponse = CreateCategoryResponse.response.result.Name
    * def DescriptionIdResponse = CreateCategoryResponse.response.result.Description
    * def data = read('updateCategory-data.csv')
    Given path '/api/categories/' + CategoryIdResponse
    And request data
    When method PUT
    Then status 200
    And match response.result.Name == NameIdResponse
    And match response.result.Description == DescriptionIdResponse

