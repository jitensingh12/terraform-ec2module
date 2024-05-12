variable "status" {}

variable "ami" {
  type = string
  default = ""
  description = "this is an AMI"
}
variable "key_name" {
    type = string
}

#variable "name" {
#    type = string
#}
variable "subnet" {
    type =  string
    #default = [ "" ] 
}

#variable "availability_zone" {
#    type = string
#  
#}
variable "security_group_ids" {
    type = list(string)
}

variable "bootdisk" {
    type = string 
}

variable "secondry_disk" {
    type = string
}

variable "instance_type" {
    type = string  
}

variable "tags" {
    type = map
}