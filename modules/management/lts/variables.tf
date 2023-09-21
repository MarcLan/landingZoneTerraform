######################################################################
# Groups and Streams varialbe in map(object({}))
######################################################################

variable "lts" {
  description = "lts configuration"

  type = map(object({

    group_name = string
    group_ttl = string

    streams = optional(map(object({
      stream_name = string

    }))) 
  }))
}