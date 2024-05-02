######################################################################
# ECS virialbe
######################################################################

variable "enterprise" {
  description = "enterprise project id"
  type        = string
}

variable "quantity" {
  description = "How many ECS need to be created"
  type = number
}

variable "name" {
  description = "ecs name"
  type        = string
}

variable "name_suffix" {
  description = "The suffix string of name for all ECS resources"

  type    = string
  default = ""
}



variable "password" {
  description = "ecs password"
  type        = string
}

variable "flavor_name" {
  description = "flavor name"
  type        = string
}

variable "image_name" {
  description = "image name"
  type        = string
}

variable "security_group" {
  description = "security group id"
  type        = set(string)
}

variable "subnet" {
  description = "subnet id"
  type        = string
}
