provider "aws" {
  region = "ap-southeast-2"
}

provider "azurerm" {}

resource "aws_instance" "ec2" {
  ami           = "ami-0d6560f3176dc9ec0"
  instance_type = "t3.micro"
  tags = {
    Name = "my-first-instance"
  }
}

##