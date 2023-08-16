terraform {
  required_version = "1.5.5"
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.5.2"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

provider "linode" {
  token = var.linode_token
}