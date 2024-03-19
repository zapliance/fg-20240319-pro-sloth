data "azurerm_resource_group" "zapExample" {
  name = var.resource_group_name
}
resource "azurerm_container_group" "zapName" {
    name                = var.container_group_name
    location            = data.azurerm_resource_group.zapExample.location
    resource_group_name = data.azurerm_resource_group.zapExample.name
    os_type             = "Linux"

    ip_address_type = "Public"

    container {
        name   = var.container_name
        image  = var.container_image
        cpu    = var.container_cpu
        memory = var.container_memory

        ports {
        port     = var.container_port
        protocol = "TCP"
        }
    }

    tags = var.tags
}