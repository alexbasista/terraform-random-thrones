#---------------------------------------------------------------
# Provider
#---------------------------------------------------------------
terraform {
  required_providers {
    random = {
      source  = "tfeaws.abasista.sbx.hashidemos.io/banana/random"
      version = "3.7.2"
    }
  }
}

# terraform {
#   required_providers {
#     random = {
#       source = "app.terraform.io/abasista-tfc/random"
#       version = "3.7.2"
#     }
#   }
# }


#---------------------------------------------------------------
# Resources
#---------------------------------------------------------------
resource "random_shuffle" "stark" {
  input = [
    for stark in var.starks :
    upper(stark)
  ]
}

resource "random_shuffle" "lannister" {
  input = [
    for lannister in var.lannisters :
    lower(lannister)
  ]
}

resource "random_shuffle" "tyrell" {
  input = [
    for tyrell in var.tyrells :
    upper(tyrell)
  ]
}

resource "random_pet" "change_1" {}

resource "random_pet" "change_2" {}

resource "random_pet" "change_3" {}