# terraform
This repository is having terraform scripts of GCP and AWS cloud.

# Create Compute Engine instance
resource "google_compute_instance" "vm-intance" {
# Creates two identical instances with different names
  name = each.value
  for_each = var.name
  machine_type = var.machine_type
  zone         = var.zone
  tags         = ["ssh","http-server"]
#  labels = {
#    "ansible_guest" = ""
#}


  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
