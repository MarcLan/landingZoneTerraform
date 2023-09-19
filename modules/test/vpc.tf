### variables ************************

variable "vpcs" {
  description = "VPCs configuration"

  type = map(object({
    vpc_name    = string
    vpc_cidr    = string
    description = optional(string, null)
    enterprise  = optional(string, "default")
    subnets = map(object({
      subnet_name = string
      subnet_cidr = string
      description = optional(string, null)
    }))
  }))

  default = {

    "vpc1" = {
      vpc_name = "vpc-1"
      vpc_cidr = "192.168.0.0/16"
      subnets = {
        "subnet11" = {
          subnet_name = "subnet-1-1"
          subnet_cidr = "192.168.1.0/24"
        }
        "subnet12" = {
          subnet_name = "subnet-1-2"
          subnet_cidr = "192.168.2.0/24"
        }
      }
    }

    "vpc2" = {
      vpc_name = "vpc-2"
      vpc_cidr = "172.16.0.0/16"
      subnets = {
        "subnet11" = {
          subnet_name = "subnet-2-1"
          subnet_cidr = "172.16.1.0/24"
        }
        "subnet12" = {
          subnet_name = "subnet-2-2"
          subnet_cidr = "172.16.21.0/24"
        }
      }
    }



  }
}


### Resource ###

resource "huaweicloud_vpc" "this" {
  for_each = var.vpcs
  name     = each.value.vpc_name
  cidr     = each.value.vpc_cidr
}

resource "huaweicloud_vpc_subnet" "this" {
  for_each = {
    for subnet_value in local.vpc_subnets : "${subnet_value.vpc_key}.${subnet_value.subnet_key}" => subnet_value
  }
  name       = each.value.subnet_name
  cidr       = each.value.subnet_cidr
  gateway_ip = cidrhost(each.value.subnet_cidr, 1)
  vpc_id     = each.value.vpc_id
}

### Locals *******************

locals {
  vpc_subnets = flatten([
    for vpc_key, vpc_value in var.vpcs : [
      for subnet_key, subnet_value in vpc_value.subnets : {
        vpc_key     = vpc_key
        subnet_key  = subnet_key
        vpc_id      = huaweicloud_vpc.this[vpc_key].id
        subnet_cidr = subnet_value.subnet_cidr
        subnet_name = subnet_value.subnet_name
      }
    ]
  ])
}

### Outputs ******************

output "vpc_ids" {
  value = {
    for s, v in huaweicloud_vpc.this : s => v.id
  }
}

output "subnet_ids" {
  value = {
    for s, v in huaweicloud_vpc_subnet.this : s => v.id
  }
}

