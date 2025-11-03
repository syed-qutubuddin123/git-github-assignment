terraform {
  backend "s3" {
    bucket = "farhan-bucket-terraform"
    key    = "env/dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
