provider "google" {
  credentials = file("file.json")
  region = "us-central1"
  zone = "us-central1-a"
  
}

resource "google_compute_instance" "terra" {
    name="jenkins"
    machine_type = "e-micro"
    boot_disk {
      initialize_params {
        image = "centos-stream-"
      }
    }
    network_interface {
      network = "default"
      access_config {
        
      }
    }
    
}