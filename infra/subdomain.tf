resource "digitalocean_domain" "subdomain_exemplo" {
  name       = "exemplo.${var.domain}"
  ip_address = digitalocean_droplet.droplet_exemplo.ipv4_address
}

resource "digitalocean_record" "aaaa_subdomain_exemplo" {
  domain   = digitalocean_domain.subdomain_exemplo.name
  type     = "AAAA"
  name     = "@"
  value    = digitalocean_droplet.droplet_exemplo.ipv6_address
}
