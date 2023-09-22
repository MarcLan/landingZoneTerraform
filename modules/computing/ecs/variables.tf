######################################################################
# ECS virialbe
######################################################################

variable "ecs" {
  description = "Multiple ECS variable"
  
  type = map(object({

    name      = string
    flavor_id = string
    image_id  = string
    security_group_ids = string
    system_disk_type   = optional(string, null)
    system_disk_size   = optional(string, null)
    eip_id             = optional(string, null)

    network {
        uuid = string
    }

  }))
}