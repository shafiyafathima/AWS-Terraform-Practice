variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
}

variable "security_group_description" {
  description = "Description of the security group"
  type        = string
  default     = "Terraform-Security-Group"
}

variable "ssh_cidr" {
  description = "CIDR block allowed for SSH"
  type        = string
}

variable "http_cidr" {
  description = "CIDR block allowed for HTTP"
  type        = string

}

