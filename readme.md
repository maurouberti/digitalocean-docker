![Static Badge](https://img.shields.io/badge/DigitalOcean-0080FF?logo=DigitalOcean&logoColor=ffffff)
![Static Badge](https://img.shields.io/badge/Terraform-%23844FBA?logo=Terraform&logoColor=ffffff)
![Static Badge](https://img.shields.io/badge/Ansible-%23EE0000?logo=ansible&logoColor=ffffff)
![Static Badge](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=ffffff)

![Static Badge](https://img.shields.io/badge/nginx-1.25.5--alpine-009639?logo=nginx&logoColor=ffffff)
![Static Badge](https://img.shields.io/badge/php-8.3--fpm--alpine-777BB4?logo=php&logoColor=ffffff)
![Static Badge](https://img.shields.io/badge/node-22--alpine-%235FA04E?logo=node.js&logoColor=ffffff)

# DigitalOcean

Terraform na DigitalOcean provisionando um droplet com docker-compose usando um servidor nginx com suporte a PHP-FPM e Node.js.

## ssh

```
ssh-keygen -t rsa -C "maurouberti@hotmail.com" -f ./tokens/tf-digitalocean-exemplo
chmod 600 ./tokens/tf-digitalocean-exemplo
```

## terraform

```
terraform init
terraform apply -auto-approve
```

## ansible

```
ansible-playbook ./ansible/playbook.yml -i ./ansible/hosts --private-key=./tokens/tf-digitalocean-exemplo
```

## acessar droplet via ssh

```
ssh root@sane-maquiagem.com.br -i ./tokens/tf-digitalocean-exemplo
```

# Excluir infra

```
terraform destroy -auto-approve
rm -f ./tokens/tf-digitalocean-exemplo ./tokens/tf-digitalocean-exemplo.pub
rm -rf .terraform && rm terraform.tfstate && rm terraform.tfstate.backup && rm .terraform.lock.hcl
```
