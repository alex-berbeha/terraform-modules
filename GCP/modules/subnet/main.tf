resource "google_compute_subnetwork" "project-subnet" {
  name                     = "${var.subnet_name}-subnet"
  ip_cidr_range            = var.subnet_cidr
  private_ip_google_access = var.private_ip_google_access
  network                  = var.network_id
  region                   = var.region_name
}

resource "google_compute_address" "nat-ip" {
  count  = var.nat_status == true ? 1 : 0
  name   = "${var.subnet_name}-nat-ip"
  region = var.region_name
}

# create a nat to allow private instances connect to internet
resource "google_compute_router" "nat-router" {
  count   = var.nat_status == true ? 1 : 0
  name    = "${var.subnet_name}-nat-router"
  network = var.network_id
  region  = var.region_name
}

resource "google_compute_router_nat" "nat-gateway" {
  count                              = var.nat_status == true ? 1 : 0
  name                               = "${var.subnet_name}-nat-gateway"
  region                             = var.region_name
  router                             = google_compute_router.nat-router[0].name
  nat_ip_allocate_option             = "MANUAL_ONLY"
  nat_ips                            = [google_compute_address.nat-ip[0].self_link]
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}