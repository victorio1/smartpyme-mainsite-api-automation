Feature: Create Template
  This service allows to the client
  create a template from his information

  Background:
    * url baseUrlMainSite
    * header Content-Type = 'application/json'

  Scenario: Verify Create Template Passed
    Given path '/api/templates'
    And request
    """
      {
          "title":"Template",
          "description":"Description Automation Template",
          "image":"https://smartpymestoragedev.blob.core.windows.net/gallerystorage/MODA%201.png",
          "keywords":"moda, ropa, descuentos, fin de temporada, vestidos, ropa a la moda, ropa para mujeres, pantalones, pantalón, blusas, sale, descuentos, catalogo, catálogos, oferta",
          "categoriesId":[1]
      }
    """
    When method POST
    Then status 201

