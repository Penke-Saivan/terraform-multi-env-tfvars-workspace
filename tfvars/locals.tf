locals {
  common_name= "${var.project}-${var.environemnt}"
  common_tags =  {
    terraform=true
    project = var.project
  }

}