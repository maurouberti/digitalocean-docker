resource "digitalocean_domain" "domain_exemplo" {
  name       = var.domain
  ip_address = digitalocean_droplet.droplet_exemplo.ipv4_address
}

resource "digitalocean_record" "cname_domain_exemplo" {
  domain = digitalocean_domain.domain_exemplo.name
  type   = "CNAME"
  name   = "www"
  value  = "@"
}

resource "digitalocean_record" "aaaa_domain_exemplo" {
  domain   = digitalocean_domain.domain_exemplo.name
  type     = "AAAA"
  name     = "@"
  value    = digitalocean_droplet.droplet_exemplo.ipv6_address
}
