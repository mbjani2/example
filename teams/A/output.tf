output "NginX-IP" {
  value = aws_eip.dmz.public_ip
}

output "Nginx_arn" {
  value = module.nginx.ec2_arn
}