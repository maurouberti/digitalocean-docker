resource "digitalocean_droplet" "droplet_exemplo" {
  image    = var.distro_image
  name     = "droplet-exemplo"
  region   = var.region
  size     = var.droplet_size
  ipv6     = true
  tags     = ["droplet-exemplo"]
  ssh_keys = [digitalocean_ssh_key.ssh_key_exemplo.fingerprint]
}

output "droplet_exemplo_ip_address" {
  value = digitalocean_droplet.droplet_exemplo.ipv4_address
}
