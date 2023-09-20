######################################################################
# Out put Log Tank Service groups IDs for other resources
###################################################################### 

output "lts" {
  description = "Output Log Tank Service IDs"
  value = {
    for k, v in huaweicloud_lts_group.this : k => v.id 
  }
}