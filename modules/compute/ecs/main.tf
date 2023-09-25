######################################################################
# Create multiple ECSs
######################################################################

# Get Image ID
data "huaweicloud_images_image" "myimage" {
  for_each    = var.ecs
  name        = each.value.image_name
  most_recent = true
}

resource "huaweicloud_compute_instance" "this" {
  for_each           = var.ecs
  name               = each.value.name
  admin_pass         = each.value.password
  image_id           = data.huaweicloud_images_image.myimage[each.key].id
  flavor_id          = each.value.flavor_id
  security_group_ids = each.value.security_group_ids
  network {
    uuid = each.value.subnet_id
  }
}
