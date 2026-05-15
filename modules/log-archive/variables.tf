variable "bucket_name" {
  description = "Base name for the log archive bucket"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "log_prefix" {
  description = "Prefix used by the lifecycle rule for archived logs"
  type        = string
  default     = "logs/"
}