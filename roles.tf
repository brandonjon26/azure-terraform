resource "azurerm_role_assignment" "contributor_role_assignment" {
  scope                = "/subscriptions/58245785-b078-467e-8085-4c1811a2117c/resourceGroups/DefaultResourceGroup-EUS"
  role_definition_name = "Contributor"
  principal_id         = azuread_service_principal.terraform_spn.id
}