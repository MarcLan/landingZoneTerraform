resource "huaweicloud_vpc" "this" {
  for_each = var.vpcs
  name = each.value.name
  cidr = each.value.cidr
  description = each.value.description
  enterprise_project_id = each.value.enterprise
}