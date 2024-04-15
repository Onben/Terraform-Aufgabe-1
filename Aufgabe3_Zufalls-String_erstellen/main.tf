provider "local" {}
provider "random" {}

resource "random_string" "file_name"{
    length = 10
    special = false
    upper = false
    numeric = false
    lower = true
}

locals{
    full_file_name ="${random_string.file_name.result}.txt"
}

resource "local_file" "file"{
    content = "This is a file with a random filename."
    filename = "${path.module}/${local.full_file_name}"
    directory_permission = "0644"
    file_permission = "0644"
}

output "directory_and_file_name" {
    value = local.full_file_name
}
