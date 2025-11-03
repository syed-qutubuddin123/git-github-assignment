terraform {
  backend "s3" {
    bucket = "farhan-bucket-terraform"
    key    = "env/prod/terraform.tfstate"
    region = "ap-south-1"
  }
}

