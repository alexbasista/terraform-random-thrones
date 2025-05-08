resource "random_shuffle" "stark" {
    input = [
        for stark in var.starks:
        upper(stark)
    ]
}

resource "random_shuffle" "lannister" {
    input = [
        for lannister in var.lannisters:
        lower(lannister)
    ]
}

resource "null_resource" "tyrells" {
    for_each = var.tyrells

    provisioner "local-exec" {
      command = "echo ${each.value.firstname}; echo ${each.value.lastname}"
    }
}

resource "random_pet" "change_1" {}

resource "random_pet" "change_2" {}
