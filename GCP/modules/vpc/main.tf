resource "google_compute_network" "project-network" {
  name                    = "${var.vpc_name}-vpc"
  auto_create_subnetworks = var.auto_create_subnetworks
  routing_mode            = var.routing_mode
}