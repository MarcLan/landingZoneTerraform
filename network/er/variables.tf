######################################################################
#  Enterprise Router variables
######################################################################

variable "name" {
  description = "Enterprise Router name"
  type        = string
}

variable "az" {
  description = "Availability zone"
  type        = list(string)
}

variable "asn" {
  description = "64512 by default"
  type        = string
}

variable "enable_default_propagation" {
  description = "Default propagation is enabled or not"
  type        = bool
  default     = true
}

variable "enable_default_association" {
  description = "Default association is enabled or not"
  type        = bool
  default     = true
}

variable "auto_accept_shared_attachments" {
  description = "accept shared attachment by default"
  type        = bool
  default     = true
}

variable "enterprise" {
  description = "Enterprise Project ID"
  type        = string
}

######################################################################
#  VPC attachment variables
######################################################################

variable "er_id" {
  description = "Enterprise Router ID"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "attachment_name" {
  description = "Attaachment name"
  type        = string
}
