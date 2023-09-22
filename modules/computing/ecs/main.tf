######################################################################
# Create multiple ECSs
######################################################################

# Get flavor ID
data "huaweicloud_availability_zones" "myaz" {}

data "huaweicloud_compute_flavors" "this" {
  availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
  performance_type  = "normal"
  cpu_core_count    = 2
  memory_size       = 4
}

data "huaweicloud_images_image" "myimage" {
  name        = "Ubuntu 18.04 server 64bit"
  most_recent = true
}

resource "huaweicloud_compute_instance" "this" {
  for_each = var.ecs
  name = each.value.name
  image_id = data.huaweicloud_images_image.myimage.id
  flavor_id = data.huaweicloud_compute_flavors.this.ids[0]
  security_group_ids = each.value.security_group_ids
  network {
    uuid = each.value.subnet_id
  }
}