//Here the provider block is mandatory when you importing the Instance from another region

provider "aws" {
    region = "us-east-2"
  
}

// To import the existing instnace we need to run terraform import aws_instance.Localname <Existing Instance id> 

//Here we are getting the values from the created instance from the remote  instance
resource "aws_instance" "importEc2" {
  ami="ami-09da212cf18033880"
  instance_type = "t2.micro"
  key_name="My_Linux_Kp_2"
  tags = {
    name="Linux-Ec2"
  }
}