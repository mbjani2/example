provider "aws" {
  region = "ap-southeast-2"
}

provider "azurerm" {}

resource "aws_instance" "ec2" {
  ami           = "ami-0d6560f3176dc9ec0"
  instance_type = var.instance_type
  vpc_security_group_ids = "sg-050f1618a9c002599", "sg-08c6feaeb8f5ce6e3"
  tags = {
    Name = "my-first-instance"
  }
}