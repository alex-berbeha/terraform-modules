variable "subnet_name" {
  description = "Required, the name of the resource"
  default     = "my"
}

variable "subnet_cidr" {
  description = "cidr block for subnet"
  default     = "192.168.0.0/16"
}

variable "network_id" {
  description = "enter network id"
}

variable "region_name" {
  description = "enter region name for subnet"
}

variable "private_ip_google_access" {
  description = "VMs in this subnetwork without external IP addresses can access Google APIs and services by using Private Google Access"
  default     = true
}

variable "nat_status" {
  description = "Choose true for enable NAT, choose false for disabled"
  default     = false
}
