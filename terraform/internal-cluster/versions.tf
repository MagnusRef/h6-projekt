terraform {
  backend "http" {
    address        = "https://gitlab.com/api/v4/projects/45321252/terraform/state/internal-cluster"
    lock_address   = "https://gitlab.com/api/v4/projects/45321252/terraform/state/internal-cluster/lock"
    lock_method    = "POST"
    unlock_address = "https://gitlab.com/api/v4/projects/45321252/terraform/state/internal-cluster/lock"
    unlock_method  = "DELETE"
  }
}
