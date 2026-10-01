output "load_balancer_id" {
  description = "ID of the ALB"
  value       = aws_lb.this.id
}

output "load_balancer_arn" {
  description = "ARN of the ALB"
  value       = aws_lb.this.arn
}

output "load_balancer_dns_name" {
  description = "DNS name of the ALB"
  value       = aws_lb.this.dns_name
}

output "lb_security_group_id" {
  description = "ID of the ALB security group"
  value       = aws_security_group.lb.id
}

output "ec2_security_group_id" {
  description = "ID of the EC2 security group"
  value       = aws_security_group.ec2.id
}

output "ec2_subnet_ids" {
  description = "Subnet IDs used by the EC2 instances"
  value       = var.ec2_subnet_id
}

output "target_group_arn" {
  description = "ARN of the ALB target group"
  value       = aws_lb_target_group.this.arn
}

output "target_group_name" {
  description = "Name of the ALB target group"
  value       = aws_lb_target_group.this.name
}

output "listener_arn" {
  description = "ARN of the HTTP listener"
  value       = aws_lb_listener.http.arn
}

output "instance_private_ips" {
  description = "Private IP addresses of EC2 instances"
  value       = aws_instance.lb_instance[*].private_ip
}

output "instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = aws_instance.lb_instance[*].public_ip
}