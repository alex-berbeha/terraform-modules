variable "vpc_name" {
  description = "the name for vpc"
  default     = "my-vpc"
}

variable "auto_create_subnetworks" {
  description = "select true for auto-mode creating subnetwork, or false for custom mode"
  default     = "true"
}

variable "routing_mode" {
  description = "select routing mode; can be GLOBAL or REGIONAL"
  default     = "GLOBAL"
}