# Hvilket DNS zone i cloudflare der skal ændres I
variable "zone" {
  default = "malumn.dk"
}

# IP-address På vores firewalls
variable "ip" {
  default = "94.18.194.105"
}

# liste over DNS records der skal laves
variable "records" {
  default = [
    "@",
    "www"
  ]
}
