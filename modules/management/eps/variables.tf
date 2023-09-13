variable "eps" {
  description = "Enterprise Projects configuration"
  type = map(object({
    name        = string
    description = optional(string, null)
  }))
  # default = {
  #   "vpc" = {
  #     name = ""
  #   }
  # }
    default = {
    "vpc" = {
      name = ""
    }
  }
}
