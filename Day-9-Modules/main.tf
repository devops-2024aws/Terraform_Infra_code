# Creating EC2 Instance  by passing diret values without any varibales
/* resource "aws_instance" "Linux_ec2" {
    ami = "ami-08718895af4dfa033"
    instance_type = "t2.micro"
    key_name = "MyApSouthKP" 
    tags ={
        Name="Terraform Ec2"
    }
  
}*/ 

#creating Ec2 instance by passing the values from the variables.tf file
resource "aws_instance" "Linux_ec2" {
    ami = var.ami
    instance_type = var.instance_type
    key_name =  var.key_name
    tags ={
        Name= var.tag
    }
  
}

