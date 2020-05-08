variable "public_ip_name" {
    description = "Public Ip name. Follow the pattern pip-azu-[agency]-[app name]-[environment]"
    type = string
}

variable "location" {
    description = "Resource location. East US 2 by default"
    type = string
    default = "East US 2"
}

variable "resource_group_name" {
    description = "Resource group name"
    type = string
    default = "rg-azu-e2-vdmz-checkpoint-gatewayscalesetin"
}

variable "sku" {
  description = "SKU. Standard by default"
  type = string
  default = "Standard"
}

variable "ip_address_assignment" {
  description = "IP address assignment. Static by default"
  type = string
  default = "Static"
}

variable "ip_version" {
  description = "IP version. IPv4 by default"  
  type = string
  default = "IPv4"
}

variable "load_balancer_name" {
  description = "Load balancer name. Follow pattern flb-[agency]-[app name]-[environment]"  
  type = string
}

variable "load_balancer_rule_name" {
    description = "Load balancer rule name. Follow pattern lbr-azu-[agency]-[app name]-[environment]"
    type = string
}

variable "load_balancer_rule_protocol" {
  description = "Load Balancer rule protocol"
  type = string
  default = "Tcp"
}

variable "load_balancer_rule_frontend_port" {
  description = "Load balancer rule frontend port. 443 by default"
  type = number
  default = 443
}

variable "load_balancer_rule_backend_port" {
  description = "Load balancer rule backend port. Unique port required"
  type = number
}

variable "backend_pool" {
  description = "Backend Pool"
  type = string
  default = "azpavictwfw01in-bepool"
}

variable "health_probe" {
  description = "Health Probe"
  type = string
  default = "hprb-azu-e2-vdmz-chkpvmss-prd"
}

variable "enable_floating_ip" {
  description = "Enable floating IP. disable by default"
  type = bool
  default = false
}


variable "session_persistence" {
  description = "Session persistence. None by default"
  type = string
  default = "None"
}
