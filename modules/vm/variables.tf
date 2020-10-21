variable "instance-name" {

}

variable "machine_type" {
default = "n1-standard-1"
}

variable "instance_zone" {

}

variable "tags" {
default = []
}

variable "image" {
    default = "debian-cloud/debian-9"
}

variable "image_size" {
    default = ""
}

variable "network" {
    default = "default"
}

variable "subnetwork" {
    default = ""
}

variable "scopes" {
    default = ["userinfo-email", "compute-ro", "storage-ro"]
}

variable "service_account_email" {
    default = ""
}

variable "startup_script" {
    default = ""
}

variable "metadata" {
    default = {}
}