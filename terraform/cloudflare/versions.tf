terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "4.4.0"
    }
  }
  backend "http" {
    address        = "https://gitlab.com/api/v4/projects/42386575/terraform/state/cloudflare"
    lock_address   = "https://gitlab.com/api/v4/projects/42386575/terraform/state/cloudflare/lock"
    lock_method    = "POST"
    unlock_address = "https://gitlab.com/api/v4/projects/42386575/terraform/state/cloudflare/lock"
    unlock_method  = "DELETE"
  }
}
