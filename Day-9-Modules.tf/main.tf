# Creating Module for Day-8 Module File
module "Linux_ec2" {
    //Getting the source skeltion from day 8 module repository
    source = "../Day-9-Modules"

    ami = "ami-08718895af4dfa033"
    instance_type = "t2.micro"
    key_name = "MyApSouthKP"
    tag = "Terraform-Ec2"
    
  
}