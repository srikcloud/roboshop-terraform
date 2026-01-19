# output "name" {
#   value = azurerm_resource_group.main.name
# }

# output "id" {
#   value = azurerm_resource_group.main.id
# }

# output "location" {
#   value = azurerm_resource_group.main.location
# }
output "name" {
  value = data.azurerm_resource_group.existing.name
}

output "id" {
  value = data.azurerm_resource_group.existing.id
}

output "location" {
  value = data.azurerm_resource_group.existing.location
}