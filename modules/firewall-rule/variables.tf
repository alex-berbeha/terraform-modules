variable "rule_type" {
    descrcription = "can be deny or allow"
    type = string 
    default = "allow"
}

variable "firewall_name" {

}

variable "network" {
    default = "default"
}

variable "priority" {
    default = 1000
}

variable "protocol_name" {    
}

variable "ports_block" {
    default = []
}

variable "direction" {
    default = "INGRESS"
}

variable "destination_ranges" {
    default = "[0.0.0.0/0]"
}

variable "source_ranges" {
    default = "[0.0.0.0/0]"
}

variable "target_service_accounts" {
    default = []
}

variable "target_tags" {
    default = []
}