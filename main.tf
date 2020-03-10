locals {
  port   = var.port == null ? "" : ":${var.port}"
  db_url = "${var.database_type}://${var.username}:${var.password}@${var.hostname}${local.port}/${var.database_name}"

  pg_port = var.port == null ? "5432" : var.port
  pg_cmd  = "PGUSER='${var.username}' PGPASSWORD='${var.password}' PGHOST='${var.hostname}' PGPORT='${local.pg_port}' PGDATABASE='${var.database_name}' psql"

  mysql_port = var.port == null ? "3306" : var.port
  mysql_cmd  = "MYSQL_PWD='${var.password}' mysql --host='${var.hostname}' --port='${local.mysql_port}' --database='${var.database_name}' --user='${var.username}'"
}
