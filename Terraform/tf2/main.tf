terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "7.40.0"
    }
  }
}

provider "google" {
  credentials = "./service-account.json"
  project = var.project
  region  = "us-central1"
  zone    = "us-central1-c"
}

module "vpc" {
  source       = "./modules/gcp-vpc"
}




