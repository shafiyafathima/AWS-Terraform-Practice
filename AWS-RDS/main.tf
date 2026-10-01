resource "aws_db_instance" "mysql" {

  #RDS Identifier
  identifier = var.db_identifier

  #Database Engine
  engine         = "mysql"
  engine_version = "8.4.9"

  #Instance configuartion
  instance_class    = var.db_instance_class
  allocated_storage = var.allocated_strorage
  storage_type      = "gp3"

  #database configuration
  db_name  = var.db_name
  username = var.db_username
  password = var.db_password
  port     = 3306


  #Nerwork
  publicly_accessible = false

  #Backup
  backup_retention_period = 0

  #High availability
  multi_az = false

  #Learning Environment
  deletion_protection = false
  skip_final_snapshot = true

  tags = {
    Name        = var.db_identifier
    Environment = "test"
  }
}

