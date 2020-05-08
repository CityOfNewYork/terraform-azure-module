output "public_ip" {
  value = azurerm_public_ip.public_ip.name
}

output "location" {
  value = azurerm_public_ip.public_ip.location
}

output "sku" {
  value = azurerm_public_ip.public_ip.sku
}

output "allocation_method" {
  value = azurerm_public_ip.public_ip.allocation_method
}

output "ip_version" {
  value = azurerm_public_ip.public_ip.ip_version
}

output "load_balancer" {
  value = azurerm_lb.load_balancer.name
}

output "load_balancer_rule_name" {
  value = azurerm_lb_rule.load_balancer_rule.name
}

output "load_balancer_rule_protocol" {
  value = azurerm_lb_rule.load_balancer_rule.protocol
}

output "load_balancer_rule_frontend_port" {
  value = azurerm_lb_rule.load_balancer_rule.frontend_port
}

output "load_balancer_rule_backend_port" {
  value = azurerm_lb_rule.load_balancer_rule.backend_port
}

output "health_probe" {
  value = azurerm_lb_rule.load_balancer_rule.probe_id
}

output "enable_floating_ip" {
  value = azurerm_lb_rule.load_balancer_rule.enable_floating_ip
}

output "session_persistence" {
  value = azurerm_lb_rule.load_balancer_rule.load_distribution
}
