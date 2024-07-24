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

resource "random_pet" "test" {}
