data "azurerm_mssql_server" "sqlserver" {
  name                = "blg-sqlserver"
  resource_group_name = "blg-rg"
}



resource "azurerm_mssql_database" "database" {
  name         = "blg-database"
  server_id    = data.azurerm_mssql_server.sqlserver.id
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"

}