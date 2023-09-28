######################################################################
# Out put CTS for other resources
###################################################################### 

output "cts_name" {
  description = "Out put cts name for other resources"
  value = {
    for k, v in huaweicloud_cts_data_tracker.this : k => v.id
  }
}