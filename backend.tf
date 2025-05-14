# terraform {
#   cloud {
#     hostname     = "tfeaws.abasista.sbx.hashidemos.io"
#     organization = "banana"

#     workspaces {
#       name = "private-provider-test"
#     }
#   }
# }

terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "abasista-tfc"

    workspaces {
      name = "private-provider-test"
    }
  }
}