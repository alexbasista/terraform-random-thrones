terraform {
  backend "remote" {
    hostname     = "tfe.is.hashicorpdemo.com"
    organization = "cloud-admin"

    workspaces {
      name = "test"
    }
  }
}