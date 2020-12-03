# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  access_key =  var.accesskey
  secret_key =  var.secretkey
}

resource "null_resource" "create-s3-bucket" {
  provisioner "local-exec" {
    command = "aws s3 mb s3://bucket-01122020-test-cli"
  }
}


terraform {
  backend "remote" {
    organization = "Test123456_24Nov"

    workspaces {
      name = "demo-cli"
    }
  }
}
