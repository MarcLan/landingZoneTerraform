output "eps_ids" {
  value = module.eps.eps_ids
}

output "vpc_ids" {
  value = module.vpcs.vpc_ids
}

output "subnet_ids" {
  value = module.vpcs.subnet_ids
}

output "lts_group_ids" {
  value = module.lts.lts_group_ids
}

output "lts_stream_ids" {
  value = module.lts.lts_stream_ids
}

output "sg_ids" {
  value = module.sgs.sg_ids
}

output "vpc_peering_ids" {
  value = module.vpcs.vpc_peering_ids
}

output "az" {
  value = module.ecs.az
}

output "flavor_id" {
  value = module.ecs.flavor
}