variable "database_type" {
  type        = string
  description = "Database type, e.g. mysql, postgresql, etc"
}

variable "username" {
  type        = string
  description = "Database username"
}

variable "password" {
  type        = string
  description = "Database user password"
}

variable "hostname" {
  type        = string
  description = "Database hostname"
}

variable "port" {
  type        = number
  description = "Database port number"
  default     = null
}

variable "database_name" {
  type        = string
  description = "Database name"
}
