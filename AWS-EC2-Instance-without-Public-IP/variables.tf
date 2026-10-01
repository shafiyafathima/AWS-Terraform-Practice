variable "aws_region" {
  description = "aws region"
  type        = string
}

variable "ami_id" {
  description = "AMI ID"
  type        = string

}

variable "instance_name" {
  description = "name of the instance"
  type        = string
}

variable "instance_type" {
  description = "type of the instance"
  type        = string
}

variable "subnet_id" {
  description = "public subnet id"
  type        = string
}

variable "security_groups_ids" {
  description = "security groups IDs to attach to EC2 Instance"
  type        = list(string)
}
