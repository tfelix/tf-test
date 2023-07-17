# main.tf
terraform {
  backend "gcs" {
    bucket = "meshcloud-tf-states"
    prefix = "auth-test"
  }
}

variable "project_id" {
  description = "ID of the project"
}

data "google_project" "project" {
  project_id = var.project_id
}

output "project_number" {
  value = data.google_project.project.number
}