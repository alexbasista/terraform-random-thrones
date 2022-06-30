variable "temp_test" {
    type        = string
    description = "temp testing"
}

variable "starks" {
    type        = list(string)
    description = "List of Stark first names."
    default     = ["ned", "catelyn", "robb", "sansa", "arya", "bran", "rickon", "rickard", "lyanna"]
}

variable "lannisters" {
    type        = list(string)
    description = "list of Lannister first names."
    default     = ["tywin", "joanna", "jaime", "cersei", "tyrion", "lancel", "tytos", "rick"]
}

variable "tyrells" {
    type = map(
        object(
            {
                firstname = string
                lastname  = string
            }
        )
    )

    description = "Map of objects of Tyrell first and last names."
    default = {
        Tyrell1 = {
            firstname = "Mace"
            lastname  = "Tyrell"
        },
        Tyrell2 = {
            firstname = "Loras"
            lastname  = "Tyrell"
        },
        Tyrell3 = {
            firstname = "Margaery"
            lastname  = "Tyrell"
        }
    }
}

resource "random_shuffle" "stark" {
    input = [
        for stark in var.starks:
        lower(stark)
    ]
}

resource "random_shuffle" "lannister" {
    input = [
        for lannister in var.lannisters:
        upper(lannister)
    ]
}

resource "null_resource" "tyrells" {
    for_each = var.tyrells

    provisioner "local-exec" {
      command = "echo ${each.value.firstname}; echo ${each.value.lastname}"
    }
}

output "starks" {
    value = random_shuffle.stark.result
}

output "lannisters" {
    value = random_shuffle.lannister.result
}
