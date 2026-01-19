data "azurerm_resource_group" "existing" {
  name = var.name
}


# resource "azurerm_resource_group" "main" {
#   name     = var.name
#   location = var.location
# }

