# indhenter oplysninger fra cloudflare og gemmer det i data.cloudflare_zone.cluster.
data "cloudflare_zone" "cluster" {
  name = var.zone
}