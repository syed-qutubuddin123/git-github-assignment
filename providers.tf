terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.18.0"
    }
  }
  backend "s3" {
    bucket = "farhan-bucket-terraform"
    key    = "terraform"
    region = "ap-south-1"
  }
}
provider "aws" {
  # Configuration options
}
