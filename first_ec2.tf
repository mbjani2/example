
resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.ubuntu.image_id
  instance_type          = element(var.instance_type, count.index)
  vpc_security_group_ids = [aws_security_group.web-server.id, aws_security_group.management.id]
  count                  = length(var.environment)
  tags = merge(var.default, {
    Name = "nginx-server-${element(var.environment, count.index)}"
  })
}