######################################################################
# VPCs and subnets varialbe in map(object({}))
######################################################################

variable "vpcs" {
  description = "VPCs configuration"

  type = map(object({

    vpc_name    = string
    vpc_cidr    = string
    description = optional(string, null)
    enterprise  = optional(string, "default")

    subnets = optional(map(object({
      subnet_name = string
      subnet_cidr = string
      description = optional(string, null)
    })))

  }))
}
