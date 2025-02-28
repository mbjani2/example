resource "aws_security_group" "web-server" {
  name        = "web-server-sg"
  description = "Inbound rules for Web Servers"

  dynamic "ingress" {
    for_each = var.ws_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

resource "aws_security_group" "management" {
  name = "Management-group"

  dynamic "ingress" {
    for_each = var.mg_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

}