module "db1" {
  source        = "./.."
  database_type = "mysql"
  username      = "foobar"
  password      = "pa55w0rd"
  hostname      = "db-host.example.com"
  database_name = "db1"
}

module "db2" {
  source        = "./.."
  database_type = "postgresql"
  username      = "foobar"
  password      = "pa55w0rd"
  hostname      = "db-host.example.com"
  port          = 5432
  database_name = "db1"
}
