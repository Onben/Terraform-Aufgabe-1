provider "tls" {}

resource "tls_private_key" "example_key" {
    algorithm = "RSA"
    rsa_bits  = 2048
}

resource "tls_self_signed_cert" "example_cert" {
    # key_algorithm   = "RSA"
    private_key_pem = tls_private_key.example_key.private_key_pem

    subject {
        common_name = "example.com"
    }

    validity_period_hours = 12 
    allowed_uses = [
        "key_encipherment",
        "digital_signature",
        "server_auth",
    ]
}

