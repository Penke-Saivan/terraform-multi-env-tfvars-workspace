locals {
  common_name= "${var.project}-${terraform.workspace}"
  common_tags =  {
    terraform=true
    project = var.project
  }

}