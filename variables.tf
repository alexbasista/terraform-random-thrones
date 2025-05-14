variable "starks" {
  type        = list(string)
  description = "List of Stark first names."
  default     = ["ned", "catelyn", "robb", "sansa", "arya", "bran", "rickon", "rickard", "lyanna"]
}

variable "lannisters" {
  type        = list(string)
  description = "List of Lannister first names."
  default     = ["tywin", "joanna", "jaime", "cersei", "tyrion", "lancel", "tytos", "rick"]
}

variable "tyrells" {
  type        = list(string)
  description = "List of Tyrell first names."
  default     = ["Mace", "Loras", "Margaery", "Olenna"]
}