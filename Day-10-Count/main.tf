# Creating EC2 Instance  by passing diret values without any varibales
/* resource "aws_instance" "Linux_ec2" {
    ami = "ami-08718895af4dfa033"
    instance_type = "t2.micro"
    key_name = "MyApSouthKP" 
    tags ={
        Name="Terraform Ec2"
    }
  
}*/ 

#creating Ec2 instance by passing the values from the variables.tf file and creating 2 instance by using count
resource "aws_instance" "Linux_ec2" {
    ami = var.ami
    instance_type = var.instance_type
    key_name =  var.key_name
    /*Here we are passing the direct value how many instance we need with same 
    instance name
    count = 2
    tags ={
        name=var.tag_Value
    }*/

    /*
    tags = {
    #Name = "dev-1" //This will print direct instance name based on the count
    #Name = "web-${count.index}" # this will print the same name with index value 
    Name= var.test[count.index]  # the instance name will get from variables .tf 
  }

    */

    count = 2
    tags = {
      name= "var.tag_Value-${count.index}"
    }
  
}

