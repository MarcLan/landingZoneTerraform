# variables ************************

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

    vpc1 = {
      vpc_name = "vpc1"
      vpc_cidr = "192.168.0.0/16"
      subnets = {
        "subnet1" = {
          subnet_name = "subnet1"
          subnet_cidr = "192.168.0.0/24"
        }
        "subnet2" = {
          subnet_name = "subnet2"
          subnet_cidr = "192.168.1.0/24"
        }
      }
    }

    "vpc2" = {
      vpc_name = "vpc22222"
      vpc_cidr = "172.16.0.0/16"
      subnets = {
        "subnet1" = {
          subnet_name = "subnet1"
          subnet_cidr = "172.16.0.0/24"
        }
        "subnet2" = {
          subnet_name = "subnet2"
          subnet_cidr = "172.16.1.0/24"
        }
      }
    }

  }
}

# # Resource ******************
# module "eps" {
#   source = "../../dev/management"
# }

resource "huaweicloud_vpc" "this" {
  for_each              = var.vpcs
  name                  = each.value.vpc_name
  cidr                  = each.value.vpc_cidr
  # enterprise_project_id = module.eps.eps_ids["dev"]
}

# resource "huaweicloud_vpc_subnet" "this" {
#   for_each = {
#     for subnet in local.vpc_subnets : "${subnet.vpc_name} + ${subnet.subnet_name}" => subnet
#   }
#   name       = each.value.subnet_name
#   cidr       = each.value.cidr
#   gateway_ip = cidrhost(each.value.cidr, 1)
#   vpc_id     = each.value.vpc_id
# }

# Locals *******************

locals {
  vpc_subnets = flatten([
    for vpc_key, vpc_value in var.vpcs : [
      for subnet_key, subnet_value in vpc_value.subnets : {
        subnet_name = subnet_value
        vpc_name    = vpc_value
        vpc_id      = huaweicloud_vpc.this[vpc_key].id
        cidr        = subnet_value.subnet_cidr
      }
    ]
  ])
}

# locals {
#   vpc_subnets = flatten([
#     for vpc_name, vpc in var.vpcs : [
#       for subnet_name, subnet in vpc.subnets : {
#         subnet_name = subnet_name
#         vpc_name    = vpc_name
#         vpc_id      = huaweicloud_vpc.this[vpc_name].id
#         cidr        = subnet.cidr
#       }
#     ]
#   ])
# }

# Outputs ******************

output "vpc_ids" {
  value = {
    for s, v in huaweicloud_vpc.this : s => v.id
  }
}

# output "subnet_ids" {
#   value = {
#     for s, v in huaweicloud_vpc_subnet.this : s => v.id
#   }
# }


