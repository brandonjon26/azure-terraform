resource "azuread_application" "reactapp" {
  display_name = "reactapp-spn"
  owners       = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal" "terraform_spn" {
  application_id = azuread_application.reactapp.application_id
}

resource "azuread_service_principal_password" "terraform_spn_password" {
  service_principal_id = azuread_service_principal.terraform_spn.id
  end_date_relative    = "30000h"
}