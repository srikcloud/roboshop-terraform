env = "dev"
rg_location = "UK West"
ip_configuration_subnet_id = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Network/virtualNetworks/roboshop-network/subnets/default"
zone_name                  = "srikanth553.store"
storage_image_reference_id = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Compute/images/local-devops-practice"
network_security_group_id = "/subscriptions/f7fcf972-1a3d-456c-a347-914d12f8c308/resourceGroups/rg-roboshop/providers/Microsoft.Network/networkSecurityGroups/roboshop-nsg"
databases =  {
  default = {
    mongodb  = {
        rgname = "ukwest"
    }
    rabbitmq = {
        rgname = "ukwest"
    }
    mysql    = {
        rgname = "ukwest"
    }
    redis    = {
        rgname = "ukwest"
    }
  }
}
applications = {
  default = {
    catalogue  = {}
    user       = {}
    cart       = {}
    payment    = {}
    shipping   = {}
    frontend   = {}
  }
}

rg_name = {
  ukwest = {
    location = "UK West"
  }
}
