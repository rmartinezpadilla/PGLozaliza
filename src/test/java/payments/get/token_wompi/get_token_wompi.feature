Feature: Get Token Wompi

  Background:
    #* header Authorization "Bearer pub_test_xbAQz028KI78xmEu9UvCi3n7piM0E2yp"
    * header Authorization = 'Bearer ' + "pub_test_xbAQz028KI78xmEu9UvCi3n7piM0E2yp"
    * url "https://sandbox.wompi.co/v1/tokens/cards"
    * def jsonGenerateToken = read('../data/JsonTokenWompi.json')
    * request jsonGenerateToken

  @TokenWompi
  Scenario: Get Token
    When method post
    Then status 201
    And def idTokenWompi = $.data.id
    Then print 'TOken Obtenido: ' + idTokenWompi
