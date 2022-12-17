variable "bella" {
  type = object({
    name         = string
    color        = string
    age          = number
    food         = list(string)
    favorite_pet = bool

  })

  default = {
    name  = "bella"
    color = "brown"
    age   = 7
    # set
    food         = ["fish", "chicken", "turkey"]
    favorite_pet = true
  }

}
