provider "digitalocean" {
  token = file(var.do_token)
}

data "digitalocean_ssh_key" "homebase_ssh" {
  name = "homebase_ssh"
}
