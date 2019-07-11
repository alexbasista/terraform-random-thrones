resource "null_resource" "test" {
    triggers = {
        date_time = "${timestamp()}"
    }
    provisioner "local-exec" {
        command = "echo hello"
    }
}
