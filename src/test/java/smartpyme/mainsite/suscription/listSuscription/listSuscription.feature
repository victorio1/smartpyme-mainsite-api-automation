Feature: List Suscription
  This service allows to get the
  data from users especially what
  have a suscription with Main Site

  Background:
    * url baseUrlMainSite

    Scenario: List Suscription Passed
      * def CreateSuscription = call read('classpath:common/create')
      Given path '/api/contacts/' +
