terraform {
  required_providers {
    # Vsphere provider
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.2.0"
    }
  }
  # Terraform Gitlab Backend
  backend "http" {
    address        = "https://gitlab.com/api/v4/projects/45321252/terraform/state/dmz-cluster"
    lock_address   = "https://gitlab.com/api/v4/projects/45321252/terraform/state/dmz-cluster/lock"
    lock_method    = "POST"
    unlock_address = "https://gitlab.com/api/v4/projects/45321252/terraform/state/dmz-cluster/lock"
    unlock_method  = "DELETE"
  }
}

# indstillinger til vsphere provideren
provider "vsphere" {
  allow_unverified_ssl = true
}