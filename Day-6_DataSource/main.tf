//Creating the Ec2 Instance
resource "aws_instance" "amgLinux-id" {
    
    //Calling the ami Id from the data.tf file
    ami = "ami-09da212cf18033880"
    
    instance_type = "t2.micro"
    
    //Calling the Subnet Id from the data.tf file
    subnet_id = data.aws_subnet.sub.id
    
    //Calling the Security_group from the data.tf file
    security_groups = [ data.aws_security_group.sg.id ]

    

    key_name = "My_Linux_Kp_2"

    tags = {
      Name = "dev-ec2"
    }
}

