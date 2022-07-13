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