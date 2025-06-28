resource "azurerm_mssql_server" "sql-server" {
  name                         = "blg-sqlserver"
  resource_group_name          = "blg-rg"
  location                     = "Japan East"
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "thisIsKat11"
  minimum_tls_version          = "1.2"

  
}