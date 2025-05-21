provider "google" {
  project = "friendly-vigil-460013-i8"
  region  = "us-central1"
}

resource "google_storage_bucket" "static_site" {
  name          = "kartik_bucket"
  location      = "US"
  force_destroy = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_iam_binding" "public_rule" {
  bucket = google_storage_bucket.static_site.name

  role = "roles/storage.objectViewer"
  members = [
    "allUsers",
  ]
}

resource "google_storage_bucket_object" "html_files" {
  name   = "index.html"
  bucket = google_storage_bucket.static_site.name
  source = "index.html"
  content_type = "text/html"
}

# Repeat this for other files like style.css, script.js, etc.
resource "google_storage_bucket_object" "style" {
  name   = "style.css"
  bucket = google_storage_bucket.static_site.name
  source = "style.css"
  content_type = "text/css"
}

resource "google_storage_bucket_object" "js" {
  name   = "script.js"
  bucket = google_storage_bucket.static_site.name
  source = "script.js"
  content_type = "application/javascript"
}