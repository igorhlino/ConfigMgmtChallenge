resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.type
  zone         = var.zone

  tags = [var.tag]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }


  network_interface {
    network = var.network
    subnetwork = var.subnetwork
    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    foo = "bar"
  }
  
}
