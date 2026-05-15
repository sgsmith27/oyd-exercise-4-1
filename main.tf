module "log_archive" {
  source = "./modules/log-archive"

  bucket_name = var.log_bucket_name
  environment = var.environment
}

module "user_events" {
  source = "./modules/user-events"

  table_name  = var.user_events_table_name
  environment = var.environment
}