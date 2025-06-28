module "rg" {
  source = "../module/rg"

}

module "vnet" {
    depends_on = [ module.rg ]
  source = "../module/vnet"
}

module "subnet" {
    depends_on = [ module.vnet ]
  source = "../module/subnet"
}

module "pip" {
  depends_on = [ module.rg ]
  source = "../module/pip"
}

module "vm" {
  depends_on = [ module.rg, module.vnet, module.subnet, module.pip ]
  source = "../module/vm"
}

module "sqlserver" {
  depends_on = [ module.rg ]
  source = "../module/sqlserver"
}

module "database" {
  depends_on = [ module.sqlserver ]
  source = "../module/database"
}