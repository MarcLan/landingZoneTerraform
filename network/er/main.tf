######################################################################
# Create Enterprise Router instance
######################################################################

resource "huaweicloud_er_instance" "this" {
  name                  = var.name
  enterprise_project_id = var.enterprise
  asn                   = var.asn
  availability_zones    = var.az
}

resource "huaweicloud_er_vpc_attachment" "this" {
  name                   = var.attachment_name
  instance_id            = var.er_id
  vpc_id                 = var.vpc_id
  subnet_id              = var.subnet_id
  auto_create_vpc_routes = true
}
