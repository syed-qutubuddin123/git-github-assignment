provider "aws" {
  region = "ap-south-1"
}

module "dev_server_1" {
  source        = "../modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  name          = "dev-server-1"
}

module "dev_server_2" {
  source        = "../modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  name          = "dev-server-2"
}

