output "NginX-IP" {
    value = aws_eip.dmz.public_ip
}
