SamlIdp.configure do |config|
  # X.509 certificate and private key for signing SAML assertions
  # In production, load these from environment variables or secrets
  config.x509_certificate = <<~CERT
    -----BEGIN CERTIFICATE-----
    MIIDCTCCAfGgAwIBAgIUD0raguWshaCqch5LrdAcORRTnDowDQYJKoZIhvcNAQEL
    BQAwFDESMBAGA1UEAwwJcmFpbHMtaWRwMB4XDTI2MDMyMjEzNDY1OFoXDTM2MDMx
    OTEzNDY1OFowFDESMBAGA1UEAwwJcmFpbHMtaWRwMIIBIjANBgkqhkiG9w0BAQEF
    AAOCAQ8AMIIBCgKCAQEAvt3LDYVvALsCz6x9XTz6w3ILQQGN8CEB5IxM863pD4YI
    6uaFnRg8pnBIpTMPVVRi1exOvIaRD8LD3tQtsqisl8UvIGdr4lWmb/LxZNofpEes
    9ZkLlSqPC81UtjL34SK4Cr+mQF5ZW/SAHhfao516IgQ4iCXG2j8WqS1ca+rqBHed
    g2U4itlKEpYpCCRq+0WSy/vrMf3zDtgX2lGsditIgJW5diH/F6dXY9VNwHBjImbY
    OEfA6RJQrXGB3Sj8zU7gRwjtj9cuHq/JIun4eWS7afL65k7YSACCtJ8fjhfvwfm4
    AIf9FYZ/TeJjSo0fd9P3oW/NAxvZSomEh12OA4RHGQIDAQABo1MwUTAdBgNVHQ4E
    FgQUE9SVn/z+k6kDChpfUqKQKPy4ttAwHwYDVR0jBBgwFoAUE9SVn/z+k6kDChpf
    UqKQKPy4ttAwDwYDVR0TAQH/BAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEAVV2m
    rqJUNt+v7WrNtWHL+pxkv08UaRi+hCwcAP4uFfquCZAWKmPmz909z39/T+OMetK0
    Z4CqZJaCdaYS19uWkkagWwmJqFg3TxcXE7a52jhBq0yt/TJ8Hs0bdcnHnIG3uJC4
    xxFysT3KXoevVs66ZO7w7K6sltv99cJmHRaMwkqoDPzQq3F3m/DrdC6UOL5FT8rK
    smmyEGrnaKLGF027MFwOJAA3t49dlK20lZJq4yuUJhQKQExL+z6EAmHZujeytiIT
    84WJUmmffayeCN+k+YsG3re+VsKelzmXVnfYdw6aznVob18GikITBrQl2rtbZQ+p
    d0zuZhKLHYkCyC4jYQ==
    -----END CERTIFICATE-----
  CERT

  config.secret_key = <<~KEY
    -----BEGIN RSA PRIVATE KEY-----
    MIIEpAIBAAKCAQEAvt3LDYVvALsCz6x9XTz6w3ILQQGN8CEB5IxM863pD4YI6uaF
    nRg8pnBIpTMPVVRi1exOvIaRD8LD3tQtsqisl8UvIGdr4lWmb/LxZNofpEes9ZkL
    lSqPC81UtjL34SK4Cr+mQF5ZW/SAHhfao516IgQ4iCXG2j8WqS1ca+rqBHedg2U4
    itlKEpYpCCRq+0WSy/vrMf3zDtgX2lGsditIgJW5diH/F6dXY9VNwHBjImbYOEfA
    6RJQrXGB3Sj8zU7gRwjtj9cuHq/JIun4eWS7afL65k7YSACCtJ8fjhfvwfm4AIf9
    FYZ/TeJjSo0fd9P3oW/NAxvZSomEh12OA4RHGQIDAQABAoIBAQCqPbv6UHTk6ukk
    AQ9Elbp5j4Q4NEG82EQO7ZFJnGoPnZbgpkKxD0gxkF9LclKP4pfRhVfpUgGbVDZO
    z2P/QfHH4WoadgTFOW4d1ky3jtLAPeoomZy6LN6wQTH43Vc5aTVM6QpJyZ3cpiWM
    MeyjGTgxlSAzV7aZPcJhnYMdAsg+uENyRnQonZZKTO8PLBBzy5rw0c28OJJ0ft5+
    cYFkkUU4sASUqen+FAccpIie1yMkhB24gWuhXs9A+wj88ms5h7pMU4HB/2cPuZx4
    bjdAlYIe0aycF7JYkDagfEBFHQfUQKaA1RzjQ984ECBhl+YFX1hGdjB6SjPGqAxK
    bmRkVbaxAoGBAOfFph6sL5MhlOmJkcHMF6dY4cHDy7xT9tmc9wk+c276pzlRQtVA
    yLEIIkIttdGOTomk5RK0eFeeGf8QZoGqGuCQSE54hRsS3718fYTnKbtTPeDZOGA4
    J6JQeLiY1sY7tXqCRyUF44AkbNOXOVKb8pyWpdT4onvY/L/N4fQSLUddAoGBANLR
    fCwvLPZeitkuehFOV9u+O4j8O6ugKfNZlFv4/1GTrXpWmjpsnr+moPT8nIsW9czh
    Xpbpg5q4ETDBa2dmTPm+lW5awSU6oDv9eZ8uufCLbdiwZUinQmcRqNKo8QgqQcIV
    ORJbxjbLUluDEJGc2Y6xrtEQ8sNB4Ee5e/Tz+K7tAoGAXRhSxXc8FMkkWznaxhEI
    XzugUogmyZqgSIB36cqf6y/bA3bUdXv0IMe3mwVpRqb2fOsy5/R9chQbNQyNX//H
    k/PgV0SpklpebGoYsM15QbkJ3crijiOAJ/5SvzME8dMB7hduJDzdSJdY7xSK/deN
    97+7FHRaL4zU2OYFoFe8wDECgYEAim/99pXUFMTosM2QYyTrFOXK+p2IIZ+/bIn6
    nprYLp2nYZrVFGCXroqhT79CnSOqrauhDcCyJzuQLlAVU4UeLzIzto/qHaRt7Hb7
    EskAWTF2JMFRAXC0bjJuhkdiYFY/cE+3dpLFit3hay6aBsTVKJsNjURv5kCwIulu
    uOAtAdECgYB5pQF45AvkXugNP98TKpPJLZMNhKF0ga++GeMh1wE7SFPjGPcP8Pgc
    AplcX2DZyIQ1kKz/th0tWuttnaVwgcVHULWVBwjh/9aZs4Wiutu9yUh2AGz0emoZ
    Sc4ehHSlRwEFkvrP70AHvzvpIGL1WdssxgeTVlZNZMK1erE+FMTb0w==
    -----END RSA PRIVATE KEY-----
  KEY

  config.algorithm = :sha256

  # Service Provider finder: called with SP entity ID (issuer), returns SP config hash or nil
  # Return nil to reject unknown SPs, or a hash to accept any SP (open IdP)
  config.service_provider.finder = lambda do |issuer_or_entity_id|
    # Accept all service providers (open IdP mode)
    # In production, restrict to known SPs:
    # SomeModel.find_by(entity_id: issuer_or_entity_id)&.to_saml_sp_config
    {
      response_hosts: [],  # empty = accept any ACS URL
    }
  end

  # Name ID format: email_address を使用（デフォルトの persistent だと User#persistent が必要になる）
  config.name_id.formats = {
    email_address: -> (principal) { principal.email },
  }

  # Attribute statement configuration
  config.attributes = {
    email: {
      getter: :email,
      name: "email",
      name_format: "urn:oasis:names:tc:SAML:2.0:attrname-format:basic",
      friendly_name: "Email",
    },
  }
end
