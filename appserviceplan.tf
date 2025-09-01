resource "azurerm_app_service_plan" "app_service_plan" {
  name                = "linux-docker-plan-brandonjon"
  location            = "eastus2"
  resource_group_name = var.resource_group
  kind                = "Linux"
  reserved            = true
  sku {
    tier = "Standard"
    size = "S1"
  }
}