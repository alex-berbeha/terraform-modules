resource "google_compute_instance" "default" {
  name         = var.instance-name
  machine_type = var.machine_type
  zone         = var.instance_zone

  tags = var.tags

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.image_size
    }
  }

  network_interface {
    network = var.network
    subnetwork = var.subnetwork

    access_config {
    }
  }

  metadata = var.metadata

  metadata_startup_script = var.startup_script

  service_account {
    scopes = var.scopes
    email  = var.service_account_email
  }
}