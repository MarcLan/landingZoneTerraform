######################################################################
# Out put VPCs IDs for other resources
###################################################################### 

output "vpc_ids" {
  description = "Out put VPCs IDs for other resources"
  value = {
    for k, v in huaweicloud_vpc.this : k => v.id
  }
}

output "subnet_ids" {
  description = "Out put subnets IDs for other resources"
  value = {
    for k, v in huaweicloud_vpc_subnet.this : k => v.id
  }
}