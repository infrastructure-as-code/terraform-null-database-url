output "database_url" {
  value       = local.db_url
  description = "The database URL"
}

output "cli_command" {
  value       = (var.database_type == "mysql") ? local.mysql_cmd : ((var.database_type == "postgresql" ? local.pg_cmd : ""))
  description = "CLI command line for associated database type"
}
