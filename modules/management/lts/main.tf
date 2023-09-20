######################################################################
# Create multiple Log Tank Service gourps with multiple streams
######################################################################

resource "huaweicloud_lts_group" "this" {
  for_each    = var.lts_groups
  group_name  = each.value.name
  ttl_in_days = each.value.ttl
}

resource "huaweicloud_lts_stream" "this" {
  for_each    = var.lts_streams
  stream_name = each.value.name
  group_id    = each.value.group_id
}
