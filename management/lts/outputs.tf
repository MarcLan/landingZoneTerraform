######################################################################
# Out put Log Tank Service groups and Streams IDs for other resources
###################################################################### 

output "lts_group_ids" {
  description = "Output Log Tank Service Groups IDs"
  value = {
    for k, v in huaweicloud_lts_group.this : k => v.id 
  }
}

output "lts_stream_ids" {
  description = "Output Log Tank Service Steams IDs"
  value = {
    for k, v in huaweicloud_lts_stream.this : k => v.id 
  }
}