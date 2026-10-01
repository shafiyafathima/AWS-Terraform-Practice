output "instance_id" {
  description = "instance id"
  value       = aws_instance.demo_vm.id
}

output "public_ip" {
  description = "public ip"
  value       = aws_instance.demo_vm.public_ip
}

output "private_ip" {
  description = "private ip"
  value       = aws_instance.demo_vm.private_ip
}