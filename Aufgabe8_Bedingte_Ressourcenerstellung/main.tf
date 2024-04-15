provider "local" {}

variable "create_file" {
    description = "Bestimmt, ob die Datei erstellt werden soll oder nicht"
    type        = bool
    default     = false
    }

    resource "local_file" "example" {
    count    = var.create_file ? 1 : 0
    filename = "${path.module}/example.txt"
    content  = "This file is created conditionally"
    }