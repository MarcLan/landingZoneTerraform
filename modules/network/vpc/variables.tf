######################################################################
# VPCs and subnets variablee in map(object({}))
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


######################################################################
# VPC flow log variable
######################################################################

variable "vpc_flow_log" {
  description = "VPCs flow log configuration"

  type = map(object({

    name          = string
    type          = optional(string, "network")
    resource_id   = string
    traffic_type  = optional(string, "all")
    lts_group_id  = string
    lts_stream_id = string

  }))
}
