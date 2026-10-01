variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "Type of instance"
  type        = string
}

variable "subnet_id" {
  description = "Public Subnet ID where EC2 instance will be launched"
  type        = string
}

variable "security_groups_ids" {
  description = "security group IDs to attach to the EC2 Instance"
  type        = list(string)
}

variable "instance_name" {
  description = "name of instance"
  type        = string
}