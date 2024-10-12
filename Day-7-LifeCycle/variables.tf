variable "Ami" {
    type = string
    default = "ami-09da212cf18033880"
    description = "Passing the ami  value  from variable.tf to main.tf"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "Passing the insatnace_type  value  from variable.tf to main.tf"
  
}

variable "keypair" {
    type = string
    default = "My_Linux_Kp_2"
    description = "Passing the keypair  value  from variable.tf to main.tf"
}

