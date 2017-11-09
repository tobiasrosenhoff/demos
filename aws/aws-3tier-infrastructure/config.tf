# Config need for Terraform remote state backend
terraform {
  # The configuration for this backend will be filled in by Terragrunt. Check terraform.tfvars in root folder.
  backend "s3" {}
  required_version = ">= 0.9.3"
}

provider "aws" {
  region = "${var.region}"
  version = "~> 1.2.0"
}
