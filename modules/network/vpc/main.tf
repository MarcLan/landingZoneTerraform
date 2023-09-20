######################################################################
# Create multiple VPCs with multiple subnets
######################################################################

resource "huaweicloud_vpc" "this" {
  for_each              = var.vpcs
  name                  = each.value.vpc_name
  cidr                  = each.value.vpc_cidr
  enterprise_project_id = each.value.enterprise
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

######################################################################
# Flatten([]) for akes a list and replaces any elements 
# that are lists with a flattened sequence of the list contents.
######################################################################

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
