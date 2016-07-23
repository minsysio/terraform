variable "scaleway_auth_token" {}
variable "scaleway_organization" {}

provider "scaleway" {
  token = "${var.scaleway_auth_token}"
  organization = "${var.scaleway_organization}"
}

resource "scaleway_server" "newhost01" {
  name = "newhost"
  image = "aecaed73-51a5-4439-a127-6d8229847145"
  type = "VC1S"
}