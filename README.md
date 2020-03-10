# Terraform Database URL Generation Module

Are you ever tired of figuring out how to generate a [database URL](https://devcenter.heroku.com/changelog-items/438) or figuring out what the CLI command format is?  This module is for you.

## Usage

```
module "db1" {
  source = "./.."
  database_type = "mysql"
  username = "foobar"
  password = "pa55w0rd"
  hostname = "db-host.example.com"
  database_name = "db1"
}

output "db1_url" {
  value = module.db1.database_url
}

output "db1_cli" {
  value = module.db1.cli_command
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| database\_name | Database name | `string` | n/a | yes |
| database\_type | Database type, e.g. mysql, postgresql, etc | `string` | n/a | yes |
| hostname | Database hostname | `string` | n/a | yes |
| password | Database user password | `string` | n/a | yes |
| port | Database port number | `number` | `null` | yes |
| username | Database username | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| cli\_command | CLI command line for associated database type |
| database\_url | The database URL |
