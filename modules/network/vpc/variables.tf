######################################################################
# VPCs and subnets variable in map(object({}))
######################################################################

variable "vpcs" {
  description = "VPCs variable"
  default = {}
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
  description = "VPCs flow log variable"
  default = {}

  type = map(object({

    name          = string
    type          = optional(string, "network")
    resource_id   = string
    traffic_type  = optional(string, "all")
    lts_group_id  = string
    lts_stream_id = string

  }))
}


######################################################################
# VPC Peering variable
######################################################################

variable "vpc_peering" {
  description = "VPC peering variable"
  default = {}
  type = map(object({

    name        = string
    vpc_id      = string
    peer_vpc_id = string

  }))
}


######################################################################
# Route variable
######################################################################

variable "route" {
  description = "Multiple routes variable"
  default = {}
  type = map(object({
    vpc_id      = string
    destination = string
    type        = string
    nexthop     = string
  }))
}
