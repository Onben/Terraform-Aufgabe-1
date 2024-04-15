resource "random_password" "secure_password" {
    length  = 20
    special = true
}

output "secure_password" {
    value     = random_password.secure_password.result
    sensitive = true
}