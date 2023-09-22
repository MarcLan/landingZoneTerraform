output "az" {
  value = data.huaweicloud_availability_zones.myaz
}

output "flavor" {
  value = data.huaweicloud_compute_flavors.this
}
