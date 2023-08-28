# main.tf
resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'Hello World'"
  }
}

output "project_number" {
  value = "123"
}