variable "vpc_cidr" {
  description = "Required, VPC cidr block"
  default     = "10.0.0.0/20"
  type        = string
}

variable "vpc_tags" {
  description = "VPC tags"
  type        = map
}