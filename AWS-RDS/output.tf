output "rds_identifier" {
  description = "RDS Database identifier"
  value       = aws_db_instance.mysql.identifier
}

output "rds_endpoint" {
  description = "RDS Database identifier"
  value       = aws_db_instance.mysql.endpoint
}

output "rds_port" {
  description = "RDS port"
  value       = aws_db_instance.mysql.port
}