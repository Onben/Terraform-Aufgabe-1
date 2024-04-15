resource "null_resource" "run_script" {
    triggers = {
        always_run = "${timestamp()}"
    }

    provisioner "local-exec" {
        command = "echo 'Running a script'"
    }
}