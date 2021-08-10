variable "main_vpc" {
  description = "This is the name of VPC, where subnet is created"
  type        = string
}

variable "subnet_cidr" {
  description = "Required, subnet cidr block"
  type        = string
}

variable "availability_zone" {
  description = "subnet availability_zone"
  type        = string
}

variable "map_public_ip" {
  description = "Vulue for mapping public IP"
  default     = true
  type        = bool
}

variable "subnet_tags" {
  description = "subnet tags"
  type        = map
}
