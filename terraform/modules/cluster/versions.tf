terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.2.0"
    }
    ct = {
      source  = "poseidon/ct"
      version = "0.11.0"
    }
  }
}
provider "vsphere" {
  allow_unverified_ssl = true
}