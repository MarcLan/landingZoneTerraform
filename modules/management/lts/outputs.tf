output "lts_group_ids" {
  description = "Output Log Tank Service IDs"
  value = {
    for k, v in huaweicloud_lts_group.this : k => v.id 
  }
}

# output "query_lts_group_ids" {
#     description = "Query lts group ID with lts group name"
#     value       = [for v in flatten(data.huaweicloud_lts_group.this[*].groups): v.id if contains(var.query_lts_group_names, v.name)]
# }