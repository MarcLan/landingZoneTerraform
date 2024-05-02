######################################################################
# Out put OBS for other resources
###################################################################### 

output "obs_name" {
  description = "Out put obs_name for other resources"
  value = {
    for k, v in huaweicloud_obs_bucket.this : v.bucket => v.bucket
  }
}