provider "azurerm" {
  version = "=2.0.0"

  features {

  }
}

resource "azurerm_public_ip" "public_ip" {
    name = var.public_ip_name
    location = var.location
    resource_group_name = var.resource_group_name
    sku = var.sku
    allocation_method = var.ip_address_assignment
    ip_version = var.ip_version   
}

resource "azurerm_lb" "load_balancer" {
    name = var.load_balancer_name
    location = var.location
    resource_group_name = var.resource_group_name
    sku = var.sku

    frontend_ip_configuration {
        name = var.public_ip_name
        public_ip_address_id = azurerm_public_ip.public_ip.id
    }
}

resource "azurerm_lb_rule" "load_balancer_rule" {
  resource_group_name = var.resource_group_name
  name = var.load_balancer_rule_name
  protocol = var.load_balancer_rule_protocol
  frontend_port = var.load_balancer_rule_frontend_port
  backend_port = var.load_balancer_rule_backend_port
  frontend_ip_configuration_name = var.public_ip_name

  loadbalancer_id = azurerm_lb.load_balancer.id
  backend_address_pool_id = var.backend_pool
  probe_id = var.health_probe
  enable_floating_ip = var.enable_floating_ip
  load_distribution = var.session_persistence
}


