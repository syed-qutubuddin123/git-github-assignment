provider "aws" {
  region = var.aws_region
}

module "ec2" {
  source        = "./modules/ec2"
  ami_id        = "ami-06bdd2d56adcaadae"
  key_name      = var.key_name
  server_config = var.server_one_two_three
}

