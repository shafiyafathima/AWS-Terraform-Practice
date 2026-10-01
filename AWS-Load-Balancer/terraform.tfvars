aws_region = "us-east-1"

vpc_id = "vpc-0fa3868e59e955921"

subnet_id = ["subnet-0a9bcc83dbd2d1854", "subnet-0e62a284782c47890"]

# ec2 subnet

ec2_subnet_id = ["subnet-0a9bcc83dbd2d1854", "subnet-0e62a284782c47890"]

# Create 2 EC2 Instances

instance_count = 2

ami_id = "ami-0b6d9d3d33ba97d99"

instance_type = "t3.micro"

instance_name = "ec2-server"

# ALB

load_balancer_name = "ALB"

security_group_name = "ALB-SG"

allowed_cidr_blocks = ["0.0.0.0/0"]

internal = false

enable_deletion_protection = false

# TG

target_group_name = "ALB-TG"

target_group_port = 80

target_group_protocol = "HTTP"

target_type = "instance"

health_check_path = "/"

tags = {
  "Env" = "Test"
}
