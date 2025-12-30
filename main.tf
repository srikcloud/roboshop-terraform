provider "azurerm" {
     features {}
     subscription_id = "f7fcf972-1a3d-456c-a347-914d12f8c308"
}

resource "azurerm_public_ip" "frontend" {
  name                = "frontend"
  resource_group_name = "rg-roboshop"
  location            = "UK West"
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "frontend" {
  name                = "frontend-nic"
  location            = "UK West"
  resource_group_name = "rg-roboshop"

  ip_configuration {
    name                          = "frontend-nic"
    subnet_id                     = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-devops/providers/Microsoft.Network/virtualNetworks/roboshop-network/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "frontend" {
  name                  = "frontend"
  location              = "UK West"
  resource_group_name   = "rg-roboshop"
  network_interface_ids = [azurerm_network_interface.frontend.id]
  vm_size               = "Standard_B2als_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "frontend-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "frontend"
    admin_username = "azureuser"
    admin_password = "DevOps@123456"
  }
 os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_public_ip" "mongodb" {
  name                = "mongodb"
  resource_group_name = "rg-roboshop"
  location            = "UK West"
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "mongodb" {
  name                = "mongodb-nic"
  location            = "UK West"
  resource_group_name = "rg-roboshop"

  ip_configuration {
    name                          = "mongodb-nic"
    subnet_id                     = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-devops/providers/Microsoft.Network/virtualNetworks/roboshop-network/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "mongodb" {
  name                  = "mongodb"
  location              = "UK West"
  resource_group_name   = "rg-roboshop"
  network_interface_ids = [azurerm_network_interface.mongodb.id]
  vm_size               = "Standard_B2als_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "mongodb-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "mongodb"
    admin_username = "azureuser"
    admin_password = "DevOps@123456"
  }
 os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_public_ip" "catalogue" {
  name                = "catalogue"
  resource_group_name = "rg-roboshop"
  location            = "UK West"
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "catalogue" {
  name                = "catalogue-nic"
  location            = "UK West"
  resource_group_name = "rg-roboshop"

  ip_configuration {
    name                          = "catalogue-nic"
    subnet_id                     = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-devops/providers/Microsoft.Network/virtualNetworks/roboshop-network/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "catalogue" {
  name                  = "catalogue"
  location              = "UK West"
  resource_group_name   = "rg-roboshop"
  network_interface_ids = [azurerm_network_interface.catalogue.id]
  vm_size               = "Standard_B2als_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "catalogue-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "catalogue"
    admin_username = "azureuser"
    admin_password = "DevOps@123456"
  }
 os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_public_ip" "redis" {
  name                = "redis"
  resource_group_name = "rg-roboshop"
  location            = "UK West"
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "redis" {
  name                = "redis-nic"
  location            = "UK West"
  resource_group_name = "rg-roboshop"

  ip_configuration {
    name                          = "redis-nic"
    subnet_id                     = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-devops/providers/Microsoft.Network/virtualNetworks/roboshop-network/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "redis" {
  name                  = "redis"
  location              = "UK West"
  resource_group_name   = "rg-roboshop"
  network_interface_ids = [azurerm_network_interface.redis.id]
  vm_size               = "Standard_B2als_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "redis-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "redis"
    admin_username = "azureuser"
    admin_password = "DevOps@123456"
  }
 os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_public_ip" "user" {
  name                = "user"
  resource_group_name = "rg-roboshop"
  location            = "UK West"
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "user" {
  name                = "user-nic"
  location            = "UK West"
  resource_group_name = "rg-roboshop"

  ip_configuration {
    name                          = "user-nic"
    subnet_id                     = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-devops/providers/Microsoft.Network/virtualNetworks/roboshop-network/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "user" {
  name                  = "user"
  location              = "UK West"
  resource_group_name   = "rg-roboshop"
  network_interface_ids = [azurerm_network_interface.user.id]
  vm_size               = "Standard_B2als_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "user-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "user"
    admin_username = "azureuser"
    admin_password = "DevOps@123456"
  }
 os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_public_ip" "cart" {
  name                = "cart"
  resource_group_name = "rg-roboshop"
  location            = "UK West"
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "cart" {
  name                = "cart-nic"
  location            = "UK West"
  resource_group_name = "rg-roboshop"

  ip_configuration {
    name                          = "cart-nic"
    subnet_id                     = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-devops/providers/Microsoft.Network/virtualNetworks/roboshop-network/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "cart" {
  name                  = "cart"
  location              = "UK West"
  resource_group_name   = "rg-roboshop"
  network_interface_ids = [azurerm_network_interface.cart.id]
  vm_size               = "Standard_B2als_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "cart-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "cart"
    admin_username = "azureuser"
    admin_password = "DevOps@123456"
  }
 os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_public_ip" "mysql" {
  name                = "mysql"
  resource_group_name = "rg-roboshop"
  location            = "UK West"
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "mysql" {
  name                = "mysql-nic"
  location            = "UK West"
  resource_group_name = "rg-roboshop"

  ip_configuration {
    name                          = "mysql-nic"
    subnet_id                     = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-devops/providers/Microsoft.Network/virtualNetworks/roboshop-network/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "mysql" {
  name                  = "mysql"
  location              = "UK West"
  resource_group_name   = "rg-roboshop"
  network_interface_ids = [azurerm_network_interface.mysql.id]
  vm_size               = "Standard_B2als_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "mysql-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "mysql"
    admin_username = "azureuser"
    admin_password = "DevOps@123456"
  }
 os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_public_ip" "shipping" {
  name                = "shipping"
  resource_group_name = "rg-roboshop"
  location            = "UK West"
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "shipping" {
  name                = "shipping-nic"
  location            = "UK West"
  resource_group_name = "rg-roboshop"

  ip_configuration {
    name                          = "shipping-nic"
    subnet_id                     = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-devops/providers/Microsoft.Network/virtualNetworks/roboshop-network/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "shipping" {
  name                  = "shipping"
  location              = "UK West"
  resource_group_name   = "rg-roboshop"
  network_interface_ids = [azurerm_network_interface.shipping.id]
  vm_size               = "Standard_B2als_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "shipping-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "shipping"
    admin_username = "azureuser"
    admin_password = "DevOps@123456"
  }
 os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_public_ip" "rabbitmq" {
  name                = "rabbitmq"
  resource_group_name = "rg-roboshop"
  location            = "UK West"
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "rabbitmq" {
  name                = "rabbitmq-nic"
  location            = "UK West"
  resource_group_name = "rg-roboshop"

  ip_configuration {
    name                          = "rabbitmq-nic"
    subnet_id                     = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-devops/providers/Microsoft.Network/virtualNetworks/roboshop-network/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "rabbitmq" {
  name                  = "rabbitmq"
  location              = "UK West"
  resource_group_name   = "rg-roboshop"
  network_interface_ids = [azurerm_network_interface.rabbitmq.id]
  vm_size               = "Standard_B2als_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "rabbitmq-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "rabbitmq"
    admin_username = "azureuser"
    admin_password = "DevOps@123456"
  }
 os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_public_ip" "payment" {
  name                = "payment"
  resource_group_name = "rg-roboshop"
  location            = "UK West"
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "payment" {
  name                = "payment-nic"
  location            = "UK West"
  resource_group_name = "rg-roboshop"

  ip_configuration {
    name                          = "payment-nic"
    subnet_id                     = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-devops/providers/Microsoft.Network/virtualNetworks/roboshop-network/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "payment" {
  name                  = "payment"
  location              = "UK West"
  resource_group_name   = "rg-roboshop"
  network_interface_ids = [azurerm_network_interface.payment.id]
  vm_size               = "Standard_B2als_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "payment-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "payment"
    admin_username = "azureuser"
    admin_password = "DevOps@123456"
  }
 os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_dns_a_record" "frontend" {
  name                = "frontend-dev"
  zone_name           = "srikanth553.store"
  resource_group_name = rg-devops
  ttl                 = 3
  records             = [azurerm_network_interface.frontend.private_ip_address]
}

resource "azurerm_dns_a_record" "catalogue" {
  name                = "catalogue-dev"
  zone_name           = "srikanth553.store"
  resource_group_name = rg-devops
  ttl                 = 3
  records             = [azurerm_network_interface.catalogue.private_ip_address]
}


resource "azurerm_dns_a_record" "mongodb" {
  name                = "mongodb-dev"
  zone_name           = "srikanth553.store"
  resource_group_name = rg-devops
  ttl                 = 3
  records             = [azurerm_network_interface.mongodb.private_ip_address]
}

resource "azurerm_dns_a_record" "redis" {
  name                = "redis-dev"
  zone_name           = "srikanth553.store"
  resource_group_name = rg-devops
  ttl                 = 3
  records             = [azurerm_network_interface.redis.private_ip_address]
}
resource "azurerm_dns_a_record" "rabbitmq" {
  name                = "rabbitmq-dev"
  zone_name           = "srikanth553.store"
  resource_group_name = rg-devops
  ttl                 = 3
  records             = [azurerm_network_interface.rabbitmq.private_ip_address]
}
resource "azurerm_dns_a_record" "mysql" {
  name                = "mysql-dev"
  zone_name           = "srikanth553.store"
  resource_group_name = rg-devops
  ttl                 = 3
  records             = [azurerm_network_interface.mysql.private_ip_address]
}
resource "azurerm_dns_a_record" "user" {
  name                = "user-dev"
  zone_name           = "srikanth553.store"
  resource_group_name = rg-devops
  ttl                 = 3
  records             = [azurerm_network_interface.user.private_ip_address]
}
resource "azurerm_dns_a_record" "cart" {
  name                = "cart-dev"
  zone_name           = "srikanth553.store"
  resource_group_name = rg-devops
  ttl                 = 3
  records             = [azurerm_network_interface.cart.private_ip_address]
}
resource "azurerm_dns_a_record" "shipping" {
  name                = "shipping-dev"
  zone_name           = "srikanth553.store"
  resource_group_name = rg-devops
  ttl                 = 3
  records             = [azurerm_network_interface.shipping.private_ip_address]
}

resource "azurerm_dns_a_record" "payment" {
  name                = "payment-dev"
  zone_name           = "srikanth553.store"
  resource_group_name = rg-devops
  ttl                 = 3
  records             = [azurerm_network_interface.payment.private_ip_address]
}
