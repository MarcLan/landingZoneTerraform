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

# variable "lts_groups" {
#   description = "Log Tank Service groups configuration"
#   type = map(object({
#     name = string
#     ttl  = string
#     })
#   )
# }

# variable "lts_streams" {
#   description = "Log Tank Service streams configuration"
#   type = map(object({
#     name     = string
#     group_id = string
#     })
#   )
# }






# # variable "query_lts_group_names" {
# #   description = "Query lts group ID with lts group name "
# #   type    = list(string)
# #   default = []
# # }
