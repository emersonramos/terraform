variable "project" {
  default = "improving"
}

variable "environment" {
  default = "hom"
}

variable "allocated_storage" {
  default = "32"
}

variable "engine_version" {
  default = "9.6.3"
}

variable "instance_type" {
  default = "db.t2.micro"
}

variable "storage_type" {
  default = "gp2"
}

variable "database_identifier" {
  default = "dbimproving"
}

variable "database_name" {
  default = "dbimproving"
}

variable "database_username" {
  default = "postgres"
}

variable "database_password" {
  default = "passwdexemplo"
}

variable "database_port" {
  default = "5432"
}
variable "backup_retention_period" {
  default = "30"
}

variable "backup_window" {
  # 12:00AM-12:30AM ET
  default = "04:00-04:30"
}

variable "maintenance_window" {
  # SUN 12:30AM-01:30AM ET
  default = "sun:04:30-sun:05:30"
}

variable "auto_minor_version_upgrade" {
  default = true
}

variable "final_snapshot_identifier" {
  default = "terraform-aws-postgresql-rds-snapshot"
}

variable "skip_final_snapshot" {
  default = true
}

variable "copy_tags_to_snapshot" {
  default = false
}

variable "multi_availability_zone" {
  default = false
}

variable "storage_encrypted" {
  default = false
}

variable "subnet_group" {
  default = "dbimproving"
}

variable "parameter_group" {
  default = "default.postgres9.6"
}
