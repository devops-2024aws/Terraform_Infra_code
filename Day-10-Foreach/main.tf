# Creating EC2 Instance  by passing diret values without any varibales
/* resource "aws_instance" "Linux_ec2" {
    ami = "ami-08718895af4dfa033"
    instance_type = "t2.micro"
    key_name = "MyApSouthKP" 
    tags ={
        Name="Terraform Ec2"
    }
  
}*/ 

#creating Multiple Ec2  instance by using the foreach topic 
resource "aws_instance" "Linux_ec2" {
    ami = var.ami
    instance_type = var.instance_type
    key_name =  var.key_name
    for_each = toset(var.tag_name)
    tags ={
        Name=each.value
    }
  
}

