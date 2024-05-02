######################################################################
# OBS virialbe
######################################################################

variable "obs" {
  description = "OBS variables"
  type = map(object({
    name       = string
    acl        = string
    enterprise = string
  }))
}
