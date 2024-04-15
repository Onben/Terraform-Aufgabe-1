provider "local" {}

variable "user" {
    description = "username"
}

variable "password" {
    description = "password"
}

data "template_file" "config" {
    template = jsonencode({
        user     = var.user
        password = var.password
    })
}

resource "local_file" "config_file" {
    filename = "${path.module}/config.json"
    content  = data.template_file.config.rendered
}