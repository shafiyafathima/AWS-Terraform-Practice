output "vpc_id" {
  description = "VPC ID associated with security group"
  value       = aws_security_group.this.vpc_id
}

output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.this.id
}

output "security_group_name" {
  description = "Security Group Name"
  value       = aws_security_group.this.name
}

output "security_group_arn" {
  description = "Security Group ARN"
  value       = aws_security_group.this.arn
}

