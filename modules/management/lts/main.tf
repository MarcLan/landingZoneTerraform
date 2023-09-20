######################################################################
# Create multiple Log Tank Service gourps with multiple streams
######################################################################

resource "huaweicloud_lts_group" "this" {
  for_each    = var.lts
  group_name  = each.value.name
  ttl_in_days = each.value.ttl
}

resource "huaweicloud_lts_stream" "this" {
  for_each    = var.lts
  stream_name = each.value.name
  group_id    = each.value.group_id
}

######################################################################
# Flatten([]) takes a list and replaces any elements 
# that are lists with a flattened sequence of the list contents.
######################################################################

local {
  lts = flatten([
    for group_key, group_value in var.lts : [
      for stream_key, stream_value in group_value.stream : {
        group_key = group_key
        stream_key = stream_key
        group_id = huaweicloud_lts_group.this[group_key].id
        stream_name = stream_value.stream_name
      }
    ]
  ])
}
