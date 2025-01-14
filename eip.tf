resource "aws_eip" "instance1" {
  domain = "vpc"

  tags = {
    Name = "Instance1"
  }
}