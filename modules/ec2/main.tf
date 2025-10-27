resource "aws_instance" "server" {
  for_each = var.server_config

  ami           = var.ami_id
  instance_type = each.value.instance_type
  key_name      = var.key_name
  subnet_id     = each.value.subnet

  tags = {
    Name = each.value.name
  }
}

variable "server_config" {}
variable "ami_id" {}
variable "key_name" {}

