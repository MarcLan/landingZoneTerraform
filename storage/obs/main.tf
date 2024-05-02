######################################################################
# Create OBS
######################################################################

resource "huaweicloud_obs_bucket" "this" {
  for_each              = var.obs
  bucket                = each.value.name
  acl                   = each.value.acl
  enterprise_project_id = each.value.enterprise
}
