variable "vpc_cidr" {
  description = "Required, VPC cidr block"
  default     = "10.0.0.0/20"
  type        = string
}

variable "vpc_tags" {
  description = "VPC tags"
  type        = map
}

variable "internet_gateway_status" {
  description = "IGW status creation"
  type        = bool
  default     = true
}

variable "vpc_tags" {
  description = "IGW tags"
  type        = map
  default     = {}
}
