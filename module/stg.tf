resource "google_storage_bucket" "static" {
    project = "hbl-uat-sharedsvc-prj-spk-4d"
    name = var.bucket_name
    location = "asia-south1"
    storage_class = "STANDARD"

    uniform_bucket_level_access = true
}

variable "bucket_name" {
}
