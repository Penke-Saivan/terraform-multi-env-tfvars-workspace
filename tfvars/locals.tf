locals {
  common_name= "${var.project}-${var.environment}"
  common_tags =  {
    terraform=true
    project = var.project
  }

}