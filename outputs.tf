output "catapp_url" {
  value = "http://${aws_eip.hashicat.public_dns}"
}

output "catapp_ip" {
  value = "http://${aws_eip.hashicat.public_ip}"
}

data "terraform_remote_state" "network" {
  backend = "remote"

  config = {
    organization = "LG-uplus"
    workspaces   = {
      name = "terraform-aws-edu-jay-network"
    }
  }
}