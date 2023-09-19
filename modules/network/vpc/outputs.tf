######################################################################
# Out put VPCs IDs for other resources
###################################################################### 

output "vpc_ids" {
  description = "Out put VPCs IDs for other resources"
  value = {
    for s, v in huaweicloud_vpc.this : s => v.id
  }
}

output "subnet_ids" {
  description = "Out put subnets IDs for other resources"
  value = {
    for s, v in huaweicloud_vpc_subnet.this : s => v.id
  }
}

output "eps_ids" {
  description = "Out put Enterprise Projects IDs for other resources"
  value = {
    for s, v in data.huaweicloud_enterprise_project.this : s => v.id
  }
}

