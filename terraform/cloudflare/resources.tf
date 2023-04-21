resource "cloudflare_record" "cluster" {
  for_each = toset(var.records)

  zone_id = data.cloudflare_zone.cluster.id
  name    = each.value
  value   = var.ip
  type    = "A"
  ttl     = 1
  proxied = true
}
