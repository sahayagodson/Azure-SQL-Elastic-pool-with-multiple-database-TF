variable "resource_group" {
    type        = string
    description = "RG name in Azure"
}

variable "resource_group_location" {
    type        = string
    description = "RG location in Azure"
}

variable "sql_server" {
    type        = string
    description = "SQL server name "
}

variable "sql_elasticpool" {
    type        = string
    description = "sql elastic pool name"
}

variable "sql_username" {
    type        = string
    description = "SQL username"
}

variable "sql_password" {
    type        = string
    description = "SQL password"
}

variable "db_dtu_min" {
    type        = string
    description = "minimum dtu"
}

variable "db_dtu_max" {
    type        = string
    description = "maximum dtu"
}