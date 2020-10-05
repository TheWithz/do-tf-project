resource "digitalocean_droplet" "web2" {
  image              = "ubuntu-16-04-x64"
  name               = "web2"
  region             = "nyc1"
  size               = "512mb"
  private_networking = true
  user_data          = file("config/webuserdata.sh")
  ssh_keys = [
    data.digitalocean_ssh_key.homebase_ssh.id
  ]
  connection {
    host        = self.ipv4_address
    user        = "root"
    type        = "ssh"
    private_key = file(var.pvt_key)
    timeout     = "2m"
  }
}
