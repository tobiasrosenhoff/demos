terragrunt = {
  remote_state {
    backend = "s3"
    config {
      bucket  = "terraform-remote-state-demo"
      key     = "${path_relative_to_include()}/terraform.tfstate"
      region  = "us-west-1"
      encrypt = true

      # Tell Terraform to do locking using DynamoDB. Terragrunt will automatically create this table for you if
      # it doesn't already exist.
      dynamodb_table = "terraform-lock-table-stena-io-demo"
    }
  }
}
