######################################################################
# Create Cloud Trace Service
###################################################################### 

resource "huaweicloud_cts_data_tracker" "this" {
  for_each       = var.cts
  name           = each.value.name
  data_bucket    = each.value.data_bucket
 # bucket_name    = each.value.bucket_name
  data_operation = each.value.data_operation
  lts_enabled    = each.value.lts_enabled
}
