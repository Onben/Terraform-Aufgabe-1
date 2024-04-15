provider "archive" {}


resource "archive_file" "zip_archive" {
    type        = "zip"
    source_dir  = "${path.module}/Files"
    output_path = "${path.module}/my_archive.zip"
}
