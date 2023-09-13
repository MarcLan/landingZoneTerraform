resource "huaweicloud_enterprise_project" "this" {
  for_each    = var.eps
  name        = each.value.name
  description = each.value.description
}