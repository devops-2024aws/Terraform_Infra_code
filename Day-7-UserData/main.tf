/* Creating the Ec2 instance by using terraform by passing the amiid,keypair,instance
   type direct values */

# resource "aws_instance" "Ec2_instance" {
#     ami = "ami-09da212cf18033880"
#     instance_type = "t2.micro"
#     key_name = "My_Linux_Kp_2"

#     tags = {
#       Name="Linux-Ec2"
#     }

    
# }


# Creating Ec2 instance by Passing the values from the Variables.tf file
resource "aws_instance" "Ec2_instance" {
     ami = var.Ami
     instance_type = var.instance_type
     key_name = var.keypair
     //Calling the userData File
      user_data= file("UserData-test.sh")
     tags = {
       Name= "terraform-Ec2"
     }
 }

