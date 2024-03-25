terraform {

  required_version = ">= 0.15"

  required_providers {

    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.45.0"
    }

    null = {
      source = "hashicorp/null"
    }

    template = {
      source = "hashicorp/template"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}
