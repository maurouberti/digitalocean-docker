resource "digitalocean_domain" "subdomain_exemplo" {
  name       = "exemplo.${var.domain}"
  ip_address = digitalocean_droplet.droplet_exemplo.ipv4_address
}
