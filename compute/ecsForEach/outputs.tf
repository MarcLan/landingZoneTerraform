output "ecs_ids" {
    description = "Output ECS IDs"
  value ={
    for k, v in huaweicloud_compute_instance.this : k => v.id
  }
}