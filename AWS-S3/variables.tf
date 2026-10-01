variable "aws_region" {
  description = "AWS Region where S3 Bucket will be created"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Globally Unique Bucket name"
  type        = string
}
