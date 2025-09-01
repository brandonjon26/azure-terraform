resource "azurerm_storage_account" "tfstate_storage" {
  name                     = var.storage_acct_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS" # Use LRS for cost-effectiveness
  tags = {
    environment = "dev"
  }
}

resource "azurerm_storage_container" "tfstate_container" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.tfstate_storage.name
  container_access_type = "private" # Best practice for state files
}