module "create_stg_1" {
	source= "module"
	bucket_name= "asedgfhghjk1"
	}

module "create_stg_2" {
        source= "module"
        bucket_name= "asedgfhghjktyuio1"
        }

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.60.0"
    }
  }
}

provider "google" {
  region      = "asia-south1"
}
