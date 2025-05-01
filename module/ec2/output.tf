output "instance_id" {
    value = aws_instance.myec2.id
}

output "ec2_arn" {
    value = aws_instance.myec2.arn
}