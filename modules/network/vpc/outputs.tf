######################################################################
# Out put VPCs IDs for other resources
###################################################################### 

output "vpc_ids" {
  description = "Out put VPCs IDs for other resources"
  value = {
    for s, v in huaweicloud_vpc.this : s => v.id
  }
}