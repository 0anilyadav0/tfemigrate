## Provider Config

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.69.1"
    }
  }
}

provider "google" {
  project     = "hbl-uat-sharedsvc-prj-spk-4d"
}


/*data "google_compute_network" "my-network" {
  name = "gcp-vpc"
}*/

resource "google_storage_bucket" "static-site" {
  name          = "image-store.com"
  location      = "EU"
  force_destroy = true
  labels = {
        my_label = "test_sentinel"
      }

  uniform_bucket_level_access = true
}

/*output "gcp_vpc" {
    value = data.google_compute_network.my-network
}*/
