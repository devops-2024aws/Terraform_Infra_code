variable "ami" {
    type = string
    default = "ami-08718895af4dfa033"
    description = "Passing the ami value from varibales.tf to main.tf"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "Passing the instance type from varibales.tf to main.tf"
  
}

variable "key_name" {
    type = string
    default = "MyApSouthKP"
  
}

variable "tag_Value" {
    type = list(string)
    default = ["Linux_ec2","dev","test"]  
}