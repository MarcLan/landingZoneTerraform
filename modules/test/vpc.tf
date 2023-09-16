variable "vpcs" {
  description = "VPCs configuration"

  type = map(object({
    # name        = string
    cidr        = string
    description = optional(string, null)
    enterprise  = optional(string, "default")
    subnets = map(object({
   #   name        = string
      cidr        = string
      description = optional(string, null)
    }))
  }))

  default = {
    "vpc1" = {
    #  vpc_name = "vpc1"
      cidr = "192.168.0.0/16"
      subnets = {
        "subnet1" = {
          name = "test11"
          cidr = "192.168.0.0/24"
        }
        "subnet2" = {
          name = "test12"
          cidr = "192.168.1.0/24"
        }
      }
    }
    "vpc2" = {
      cidr = "172.16.0.0/16"
      subnets = {
        "subnet1" = {
    #      name = "test21"
          cidr = "172.16.0.0/24"
        }
        "subnet2" = {
   #       name = "test22"
          cidr = "172.16.1.0/24"
        }
      }
    }
  }
}

# locals {
#   subnets = merge([
#     for k, v in var.vpcs :
#      { for sk, sv in v.subnets : "${sk}" => sv}
#   ]...)
# }

locals {
  vpc_subnets = flatten([
    for vpc_name, vpc in var.vpcs : [
      for subnet_name, subnet in vpc.subnets : {
        subnet_name = subnet_name
        vpc_name = vpc_name
        vpc_id  = huaweicloud_vpc.this[vpc_name].id
        cidr  = subnet.cidr
      }
    ]
  ])
}

output "result" {
  value = local.vpc_subnets
}

resource "huaweicloud_vpc" "this" {
  for_each = var.vpcs
  name     = each.key
  cidr     = each.value.cidr
}

resource "huaweicloud_vpc_subnet" "this" {
  for_each = {
    for subnet in local.vpc_subnets : "${subnet.vpc_name} + ${subnet.subnet_name}" => subnet
  }
  name       = each.value.subnet_name
  cidr       = each.value.cidr
  gateway_ip = cidrhost(each.value.cidr, 1)
  vpc_id     = each.value.vpc_id
}
