variable "region" {
  description = "AWS region where resources will be deployed"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "log_bucket_name" {
  description = "Base name for the S3 log archive bucket"
  type        = string
}

variable "user_events_table_name" {
  description = "Base name for the DynamoDB user events table"
  type        = string
}