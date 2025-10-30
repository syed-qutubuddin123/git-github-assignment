provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "dev" {
  ami           = var.ami_id
  instance_type = var.dev_instance_type
  key_name      = var.key_name
  subnet_id     = var.dev_subnet_id

  tags = {
    Name = var.dev_name
  }
}

resource "aws_instance" "prod" {
  ami           = var.ami_id
  instance_type = var.prod_instance_type
  key_name      = var.key_name
  subnet_id     = var.prod_subnet_id

  tags = {
    Name = var.prod_name
  }
}
