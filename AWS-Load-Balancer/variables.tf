variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "VPC ID where load balancer will be created"
  type        = string
}

variable "subnet_id" {
  description = "List of Subnet IDs for the load balancer"
  type        = list(string)

  validation {
    condition     = length(var.subnet_id) >= 2
    error_message = "At least two subnet IDs are required for an ALB"
  }
}

variable "ec2_subnet_id" {
  description = "Subnet ID where ec2 instance will be created"
  type        = list(string)

  validation {
    condition     = length(var.ec2_subnet_id) >= var.instance_count
    error_message = "The number of EC2 subnets must be atleast the instance count"
  }
}

variable "instance_count" {
  description = "Number of EC2 instance behind ALB"
  type        = number

  validation {
    condition     = var.instance_count >= 2
    error_message = "atleast 2 isnatnce are required for this ALB"
  }
}

variable "ami_id" {
  description = "AMI ID for EC2 Instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance type"
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  description = "Name of the EC2 Instance"
  type        = string
  default     = "ALB-instance"
}

variable "ec2_security_group_name" {
  description = "Name of the EC2 security group"
  type        = string
  default     = "EC2-SG"
}


variable "load_balancer_name" {
  description = "Name of the Application Load Balancer"
  type        = string
  default     = "ALB"
}

variable "security_group_name" {
  description = "Name of the ALB SG"
  type        = string
  default     = "ALB-SG"
}

variable "allowed_cidr_blocks" {
  description = "CIDR blocks allowed to access the ALB"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "internal" {
  description = "Whether the ALB is internal"
  type        = bool
  default     = false
}

variable "enable_deletion_protection" {
  description = "Enable deletion protection on ALB"
  type        = bool
  default     = false
}

variable "target_group_name" {
  description = "Name of the target group"
  type        = string
  default     = "ALB-TG"
}

variable "target_group_port" {
  description = "port on which Targets recive traffic"
  type        = number
  default     = 80
}

variable "target_group_protocol" {
  description = "Protocol used by target group"
  type        = string
  default     = "HTTP"
}

variable "target_type" {
  description = "Target type for the target group"
  type        = string
  default     = "instance"

  validation {
    condition = contains(
      ["instance", "ip", "lambda"], var.target_type
    )

    error_message = "target type must be instance, ip, lambda."
  }
}

#ALB health(healthy or unhealthy)
variable "health_check_path" {
  description = "Health check path"
  type        = string
  default     = "/"
}

variable "tags" {
  description = "Tags to apply to AWS resources"
  type        = map(string)
}