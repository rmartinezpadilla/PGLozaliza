Feature: I as user of the Enerbit
  I want to consult a meter
  to see your information


  Background:
    * header Accept = 'application/json'
    * url "https://ops.enerbit.dev/learning/api/v1/meters/"
    * call read('../post_create_meter/create-meter.feature@createmeter')

  Scenario: consult meter after creating it
  path meterId
    When method get
    Then status 200

  Scenario: invalid status read a meter
    Given path meterId
    When method get
    Then status 201

  Scenario Outline: consult non-existent meter
    Given path "<id>"
    When method get
    Then status 404
    And match $.detail == "meter not found"

    Examples:
      | id                |
      | 99999999999999999 |

  Scenario: error get meter with id incorrect
    * def ExpectedGetMeterIdIncorrect =  read('../data/ExpectedGetMeterIdIncorrect.json')
    Given path "xyz"
    When method get
    Then status 422
    And match $ == ExpectedGetMeterIdIncorrect
