output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.ec2.id
}

output "public_ip" {
  description = "Public IP address"
  value       = aws_instance.ec2.public_ip
}

output "private_ip" {
  description = "Private IP"
  value       = aws_instance.ec2.private_ip
}

output "public_dns" {
  description = "public dns"
  value       = aws_instance.ec2.public_dns
}
