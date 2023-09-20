# output "eps_ids" {
#   value = module.eps.eps_ids
# }

output "eps_ids" {
  description = "Out put Enterprise Projects IDs for other resources"
  value = {
    for s, v in huaweicloud_vpc.this : s => v.id
  }
}