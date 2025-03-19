output "public_ip" {
  value = aws_eip.instance1.public_ip
}

# output "instance_name" {
#   value = aws_instance.ec2[*].tags.Name
# }

# output "instance_ip" {
#   value = aws_instance.ec2[*].arn
# }

output "combined" {
  value = zipmap(aws_instance.ec2[*].tags.Name, aws_instance.ec2[*].arn)
}


output "Nginx-ip" {
  value = aws_eip.test.public_ip
}