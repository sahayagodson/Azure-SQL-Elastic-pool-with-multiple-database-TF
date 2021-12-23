resource "azurerm_resource_group" "example" {
  name     = var.resource_group
  location = var.resource_group_location
}

resource "azurerm_sql_server" "example" {
  name                         = var.sql_server
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = var.sql_username
  administrator_login_password = var.sql_password
}

resource "azurerm_sql_elasticpool" "example" {
  name                = var.sql_elasticpool
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  server_name         = azurerm_sql_server.example.name
  edition             = "Basic"
  dtu                 = 50
  db_dtu_min          = var.db_dtu_min
  db_dtu_max          = var.db_dtu_max
  pool_size           = 5000
}

resource "azurerm_sql_database" "example" {
  
  count = 3
  name                = "myexamplesqldatabase${count.index + 14}"
  resource_group_name = azurerm_resource_group.example.name
  location            = var.resource_group_location
  server_name         = azurerm_sql_server.example.name
}