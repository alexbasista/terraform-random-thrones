variable "starks" {
    type        = list(string)
    description = "List of Stark first names."
    default     = ["ned", "catelyn", "robb", "sansa", "arya", "bran", "rickon", "rickard", "lyanna", "ADD-TEST", "MORE-TESTS"]
}

variable "lannisters" {
    type        = list(string)
    description = "list of Lannister first names."
    default     = ["tywin", "joanna", "jaime", "cersei", "tyrion", "lancel", "tytos", "ADD-TEST", "MORE-TESTS"]
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
    default = {}
}

resource "random_shuffle" "stark" {
    input = [
        for stark in var.starks:
        upper(stark)
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
