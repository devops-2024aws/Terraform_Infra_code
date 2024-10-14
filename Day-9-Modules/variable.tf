#Getting the vales from the Day-8-module.tf repo by using modules topic
variable "ami" {
    type = string
    default = ""
    description = "Passing the ami value from varibales.tf to main.tf"
  
}

variable "instance_type" {
    type = string
    default = ""
    description = "Passing the instance type from varibales.tf to main.tf"
  
}

variable "key_name" {
    type = string
    default = ""
  
}

variable "tag" {
    type = string
    default = ""
  
}