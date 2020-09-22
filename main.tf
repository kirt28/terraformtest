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