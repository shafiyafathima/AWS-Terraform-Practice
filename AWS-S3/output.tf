output "aws_region" {
  description = "AWS region  of the S3 bucket"
  value       = var.aws_region
}

output "bucket_name" {
  description = "name of the S3 Bucket"
  value       = aws_s3_bucket.this.bucket
}

output "bucket_id" {
  description = "ID of the S3 bucket"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.this.arn
}



