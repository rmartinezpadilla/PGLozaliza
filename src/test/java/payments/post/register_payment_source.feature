Feature: register payment source

  Background:
    * header Accept = '*/*'
    * url "https://ws3.20d2t2infra.com:45000/paymentgatewaylocalizaapi/api/PaymentSource/RegisterPaymentSource"

  Scenario: register payment source
    * call read("../get/token_wompi/get_token_wompi.feature@TokenWompi")
    And print "ejemplo" + idTokenWompi
    Given request {TransactionId: "c05a2f9e-54a2-4942-6df2-08db98772546" ClientDocumentNumber: "7131670220" payment_source_token: idTokenWompi payment_source_type: "CARD" RegistrationIp: "127.0.0.6" RedirectUrl: "credit-card"}
    When method post
    Then status 201