terraform {
  required_providers {
  # Cloudflare provider
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.4.0"
    }
  }
  # Terraform Gitlab Backend
  backend "http" {
    address        = "https://gitlab.com/api/v4/projects/45321252/terraform/state/cloudflare"
    lock_address   = "https://gitlab.com/api/v4/projects/45321252/terraform/state/cloudflare/lock"
    lock_method    = "POST"
    unlock_address = "https://gitlab.com/api/v4/projects/45321252/terraform/state/cloudflare/lock"
    unlock_method  = "DELETE"
  }
}
