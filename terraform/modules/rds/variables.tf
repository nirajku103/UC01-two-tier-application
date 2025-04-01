variable "allocated_storage" {
  description = "The allocated storage for the RDS instance"
  type        = number
}

variable "engine" {
  description = "The database engine for the RDS instance"
  type        = string
}

variable "instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "The username for the database"
  type        = string
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "parameter_group_name" {
  description = "The parameter group name for the RDS instance"
  type        = string
}

variable "subnet_group_name" {
  description = "The subnet group name for the RDS instance"
  type        = string
}

variable "security_group_ids" {
  description = "The security group IDs for the RDS instance"
  type        = list(string)
}

variable "subnet_ids" {
  description = "The subnet IDs for the RDS instance"
  type        = list(string)
}