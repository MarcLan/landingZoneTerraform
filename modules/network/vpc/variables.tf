variable "vpcs" {
  description = "VPCs configuration"

  type = map(object({
    name        = string
    cidr        = string
    description = optional(string, null)
    enterprise  = optional(string, "default")
    subnets = list(object({
      name        = string
      cidr        = string
      description = optional(string, null)
    }))
  }))
}

# variable "subnets" {
#   type = list(object({
#     name        = string
#     cidr        = string
#     description = optional(string, null)
#   }))
# }

# variable "subnets" {
#   description = "VPCs configuration"

#   type = map(object({
#     name           = string
#     description    = optional(string, null)
#     cidr           = string
#     ipv6_enabled   = optional(bool, true)
#     dhcp_enabled   = optional(bool, true)
#     dns_list       = optional(list(string), null)
#     tags           = optional(map(string), {})
#     delete_timeout = optional(string, null)
#   }))

# }
