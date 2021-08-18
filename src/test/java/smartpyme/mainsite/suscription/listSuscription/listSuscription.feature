Feature: List Suscription
  This service allows to get the
  data from users especially what
  have a suscription with Main Site

  Background:
    * url baseUrlMainSite

    Scenario: List Suscription Passed
      * def CreateSuscriptionResponse = call read('classpath:smartpyme/common/createSuscription.feature')
      * def SuscriptionIdResponse = CreateSuscriptionResponse.response.result.Id
      * def FullNameResponse = CreateSuscriptionResponse.response.result.FullName
      * def EmailResponse = CreateSuscriptionResponse.response.result.Email
      * def PhoneResponse = CreateSuscriptionResponse.response.result.Phone
      Given path '/api/subscribers/' + SuscriptionIdResponse
      When method GET
      Then status 200
      And match response.result.fullName == FullNameResponse
      And match response.result.email == EmailResponse
      And match response.result.phone == PhoneResponse
      And match response.result.fullName == "#string"
      And match response.result.email == "#string"
      And match response.result.phone == "#string"