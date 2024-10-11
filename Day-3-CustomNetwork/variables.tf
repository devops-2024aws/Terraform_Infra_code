variable "Ami" {
    type = string
    default = "ami-078264b8ba71bc45e"
    description = "Passing the ami  value  from variable.tf to main.tf"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "Passing the insatnace_type  value  from variable.tf to main.tf"
  
}

variable "keypair" {
    type = string
    default = "MyApSouthKP"
    description = "Passing the keypair  value  from variable.tf to main.tf"
}

