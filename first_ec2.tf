
resource "aws_instance" "ec2" {
  ami                    = element(var.available-ami, count.index)
  instance_type          = element(var.instance_type, count.index)
  vpc_security_group_ids = ["sg-050f1618a9c002599", "sg-08c6feaeb8f5ce6e3"]
  count                  = length(var.tags)
  tags = merge(var.default, {
    Name = "nginx-server-${element(var.tags, count.index)}"
  })
}