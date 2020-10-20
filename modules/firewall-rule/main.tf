resource "google_compute_firewall" "network-deny-ports" {
  count = var.rule_type == "deny" ? 1 : 0

  name               = "${var.firewall_name}-deny"
  network            = var.network
  direction          = var.direction
  priority           = var.priority
  destination_ranges = direction == "INGRESS" ? null : var.destination_ranges
  source_ranges      = direction == "EGRESS" ? null : var.source_ranges

  deny {
    protocol = var.protocol_name
    ports    = var.ports_block
  }

  target_tags             = var.target_tags
  target_service_accounts = var.target_service_accounts
}

resource "google_compute_firewall" "network-allow-ports" {
  count = var.rule_type == "allow" ? 1 : 0

  name               = "${var.firewall_name}-allow"
  network            = var.network
  direction          = var.direction
  priority           = var.priority
  destination_ranges = direction == "INGRESS" ? null : var.destination_ranges
  source_ranges      = direction == "EGRESS" ? null : var.source_ranges

  allow {
    protocol = var.protocol_name
    ports    = var.ports_block
  }

  target_tags             = var.target_tags
  target_service_accounts = var.target_service_accounts
}
