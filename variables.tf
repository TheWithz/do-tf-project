variable "do_token" {
  type        = string
  description = "Your DigitalOcean API token"
  default     = "/home/thewithz/do-tf-project/keys/do_token"
}

variable "pvt_key" {
  type        = string
  description = "The path to your private SSH key"
  default     = "/home/thewithz/.ssh/id_rsa"
}
