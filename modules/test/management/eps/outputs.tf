output "eps_ids" {
  value = module.eps.eps_ids
}

# output "eps_ids" {
#   description = "Out put Enterprise Projects IDs for other resources"
#   value = {
#     for s, v in module.eps.eps_ids : s => v.id
#   }
# }