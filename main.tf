provider "aws" {
  region     = "us-east-1"
  access_key = "AKIATFQTFEZEQJFHCW7T"
  secret_key = "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"
}
terraform {
  backend "s3" {
    bucket = "chandua"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
resource "aws_s3_bucket" "lamda" {
  bucket = "clum"
}
#  resource "aws_s3_bucket_accelerate_configuration" "chandua" {
#  bucket = "chandua"
#  status = "Enabled"
#  }

