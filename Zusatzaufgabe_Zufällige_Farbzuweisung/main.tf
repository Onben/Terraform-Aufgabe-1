provider "local" {}

resource "random_id" "red" {
    byte_length = 1
}

resource "random_id" "green" {
    byte_length = 1
}

resource "random_id" "blue" {
    byte_length = 1
}

output "random_color_scheme" {
    value = {
    red   = random_id.red.hex
    green = random_id.green.hex
    blue  = random_id.blue.hex
    }
}

resource "local_file" "color_scheme" {
    content = <<-EOT
Red:   ${random_id.red.hex}
Green: ${random_id.green.hex}
Blue:  ${random_id.blue.hex}
    EOT

    filename = "${path.module}/data/color_scheme.txt"
}