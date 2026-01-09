# variable "ip_configuration_subnet_id" {
#   default = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Network/virtualNetworks/roboshop-network/subnets/default"
# }

# variable "zone_name" {
#   default = "srikanth553.store"
# }

# # variable "rg_name" {
# #   default = "rg-devops"
# # }

# variable "storage_image_reference_id" {
#   default = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Compute/images/local-devops-practice"
# }

# variable "network_security_group_id" {
#   default = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Network/networkSecurityGroups/roboshop-nsg"
# }

# variable "databases" {
#   default = {
#     mongodb  = {}
#     rabbitmq = {}
#     mysql    = {}
#     redis    = {}
#   }
# }

# variable "applications" {
#   default = {
#     catalogue  = {}
#     user       = {}
#     cart       = {}
#     payment    = {}
#     shipping   = {}
#     frontend   = {}
#   }
# }

variable "rg_name" {}
variable "rg_location" {}