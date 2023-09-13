output "eps_ids" {
  description = "Output Enterprise Project IDs"
  value = {
    for k, v in huaweicloud_enterprise_project.this : k => v.id 
  }
}