
resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.ubuntu.image_id
  instance_type          = element(var.instance_type, 0)
  vpc_security_group_ids = [aws_security_group.web-server.id, aws_security_group.management.id]
  count                  = length(var.environment)
  key_name               = aws_key_pair.k8-key.key_name
  tags = merge(var.default, {
    Name = "k8-${element(var.environment, count.index)}"
  })
}