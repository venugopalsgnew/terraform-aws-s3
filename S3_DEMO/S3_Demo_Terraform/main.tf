# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  access_key =  "var.accesskey"
  secret_key =  "var.secretkey"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-02Dec2020-test1"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

