variable "status" {
  type    = bool
  default = true
}

variable "ami" {
  type        = string
  default     = ""
  description = "this is an AMI"
}
variable "key_name" {
  type    = string
  default = ""
}
variable "subnet" {
  type = string
  #default = [ "" ] 
}

#variable "availability_zone" {
#    type = string
#  
#}
variable "security_group_ids" {
  type    = list(string)
  default = []
}
variable "bootdisk" {
  type    = string
  default = ""
}
variable "secondry_disk" {
  type    = string
  default = ""
}

variable "instance_type" {
  type    = string
  default = ""
}