variable "table_name" {
  description = "Base name for the user events DynamoDB table"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}