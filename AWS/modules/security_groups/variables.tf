variable "sg_name" {
  description = "Security Group Name"
  type        = string
}

variable "vpc_id" {
    description = "VPC ID"
    type = string
}

variable "ingress_allows_ports" {
    description = "ports list"
    type = list
}

variable "protocol" {
    type = string
}

variable "cidr_list" {
    type = list
}

variable "sg_tags" {
    type = map
}