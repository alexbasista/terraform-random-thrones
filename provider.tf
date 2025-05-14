# terraform {
#   required_providers {
#     random = {
#       source = "tfeaws.abasista.sbx.hashidemos.io/banana/random"
#       version = "3.7.2"
#     }
#   }
# }

terraform {
  required_providers {
    random = {
      source = "app.terraform.io/abasista-tfc/random"
      version = "3.7.2"
    }
  }
}