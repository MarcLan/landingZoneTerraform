variable "lts" {
  description = "Log Tank Service configuration"
  type = map(object({
    lts_group = map(object({
      name = string
      ttl  = string
    }))
    lts_strem = map(object({
      name = string
    }))
  }))
}
