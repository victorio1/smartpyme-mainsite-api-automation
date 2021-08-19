Feature: List Contact
  This service allows to get the
  data from contacts

  Background:
    * url baseUrlMainSite

  Scenario: List Contact Passed
      * def CreateContactResponse = call read('classpath:smartpyme/common/createContact.feature')
      * def ContactIdResponse = CreateContactResponse.response.result.Id
      * def FullNameResponse = CreateContactResponse.response.result.FullName
      * def PhoneResponse = CreateContactResponse.response.result.Phone
      * def EmailResponse = CreateContactResponse.response.result.Email
      Given path '/api/contacts/' + ContactIdResponse
      When method GET
      Then status 200
      And match response.result.fullName == FullNameResponse
      And match response.result.phone == PhoneResponse
      And match response.result.email == EmailResponse
    And match response.result.fullName == "#string"
    And match response.result.phone == "#string"
    And match response.result.email == "#string"