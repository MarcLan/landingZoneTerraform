variable "vpcs" {
  description = "VPCs configuration"
  type = map(object({
    name = string
    cidr = string
    description = optional(string, null)
    enterprise  = optional(string, "default")
  }))
}