variable "ami_value" {
  description = "value for the ami"
}

variable "instance_type_value" {
  description = "value for instance_type"
}

variable "subnet_id_value" {
  description = "value for the subnet_id"
}

variable "tag_value" {
  description = "Value for the Name tag"
  type        = string
  default     = "Default-Instance-Name"
}
