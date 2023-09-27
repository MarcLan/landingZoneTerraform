######################################################################
# Create multiple ECSs
######################################################################

# Get Image ID
data "huaweicloud_images_image" "myimage" {
  name = var.image_name
}

resource "huaweicloud_compute_instance" "this" {
  count = var.quantity

  name               = format("%s-%s", var.name, count.index)
  admin_pass         = var.password
  image_id           = data.huaweicloud_images_image.myimage.id
  flavor_id          = var.flavor_name
  security_group_ids = var.security_group
  enterprise_project_id = var.enterprise

  network {
    uuid = var.subnet
  }
}
