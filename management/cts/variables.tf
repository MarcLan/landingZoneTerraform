######################################################################
# Cloud Trace Service variables
###################################################################### 

variable "cts" {
  description = "CTS description"

  type = map(object({

    name           = string
    data_bucket    = string
    #bucket_name    = string
    data_operation = optional(list(string), null)
    lts_enabled    = optional(bool, true)

  }))
}
