# #### Resource Enterprise project ###
#   source = "../../dev/management"
# }



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
      vpc_name = "vpc-nhj-preprod"
      vpc_cidr = "192.168.32.0/22"
      subnets = {
        "subnet1" = {
          subnet_name = "subnet-nhj-access-preprod"
          subnet_cidr = "192.168.32.0/24"
        }
        "subnet2" = {
          subnet_name = "subnet-nhj-app-preprod"
          subnet_cidr = "192.168.33.0/24"
        }
        "subnet3" = {
          subnet_name = "subnet-nhj-data-preprod"
          subnet_cidr = "192.168.34.0/24"
        }
        "subnet4" = {
          subnet_name = "subnet-nhj-mgmt-preprod"
          subnet_cidr = "192.168.35.0/24"
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
  enterprise_project_id = ""
}

# resource "huaweicloud_vpc_subnet" "this" {
#   for_each = {
#     for subnet_key, subnet_value in local.vpc_subnets : subnet_value.subnet_name => subnet_value
#   }
#   name       = each.value.subnet_name
#   cidr       = each.value.subnet_cidr
#   gateway_ip = cidrhost(each.value.subnet_cidr, 1)
#   vpc_id     = each.value.vpc_id
# }

resource "huaweicloud_vpc_subnet" "this" {
  for_each = {
    for subnet_key, subnet_value in local.vpc_subnets : subnet_key => subnet_value
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
        subnet_name = subnet_value.subnet_name
        vpc_value   = vpc_value
        vpc_id      = huaweicloud_vpc.this[vpc_key].id
        subnet_cidr = subnet_value.subnet_cidr
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

### Outputs ******************

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


