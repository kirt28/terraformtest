provider "aws" {
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-09152020"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
terraform {
  backend "s3" {
    bucket = "top-bar-1"
    key    = "storage/tfstate"
    region = "us-east-1"
  }
}
