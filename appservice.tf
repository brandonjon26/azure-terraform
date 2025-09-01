resource "azurerm_app_service" "app_service" {
  name                = "brandonjon-react-app"
  location            = "eastus2"
  resource_group_name = var.resource_group
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id

  site_config {
    
  }

  app_settings = {
    "DOCKER_REGISTRY_SERVER_URL"      = "https://index.docker.io/v1/"
    "DOCKER_REGISTRY_SERVER_USERNAME" = ""
    "DOCKER_REGISTRY_SERVER_PASSWORD" = ""
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
  }
  
  app_settings = {    
    "DOCKER_CUSTOM_IMAGE_NAME" = "brandonjon26/brandonjon-react-docker25:V1"         
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
  }

  tags = {
    environment = "dev"
    project     = "react-app"
  }
}