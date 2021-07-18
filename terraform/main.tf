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

  // Local SSD disk
 # scratch_disk {
 #   interface = "SCSI"
 # }

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
  
  #metadata_startup_script = <<SCRIPT
  #  SCRIPT


  #service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    #email  = var.service_account
  #  scopes = ["cloud-platform"]
  #}
}