resource "huaweicloud_vpc" "this" {
  for_each = var.vpcs
  name = each.value.name
  cidr = each.value.cidr
  description = each.value.description
  enterprise_project_id = each.value.enterprise
}

resource "huaweicloud_vpc_subnet" "this" {
  for_each = {
    for index, v in var.subnets : v.name => v
  }

  vpc_id = huaweicloud_vpc.this.id

  name        = each.value.name
  description = each.value.description
  cidr        = each.value.cidr
  gateway_ip  = cidrhost(each.value.cidr, 1)
  # ipv6_enable = each.value.ipv6_enabled
  # dhcp_enable = each.value.dhcp_enable
  # dns_list    = each.value.dns_list

}