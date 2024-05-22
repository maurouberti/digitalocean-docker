module "module_exemplo" {
  source       = "./infra"
  do_token     = file("./tokens/digital_ocean_api_token")
  pub_key      = file("./tokens/tf-digitalocean-exemplo.pub")
  domain       = "sane-maquiagem.com.br"
  droplet_size = "s-1vcpu-1gb"
  distro_image = "ubuntu-23-10-x64"
  region       = "sfo3"
}

output "ip_address" {
  value       = module.module_exemplo.droplet_exemplo_ip_address
  description = "IP externo do Droplet."
}
