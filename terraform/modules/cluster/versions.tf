terraform {
  required_providers {
    # Vsphere provider
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.2.0"
    }
    # ct provider. bruges til templating af ignition.
    ct = {
      source  = "poseidon/ct"
      version = "0.11.0"
    }
  }
}

# indstillinger til vsphere provideren
provider "vsphere" {
  allow_unverified_ssl = true
}