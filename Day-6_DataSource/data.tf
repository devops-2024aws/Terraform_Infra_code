//Passing the AMI ID 
// We can pass AMI ID in 2 ways directly we can pass the ami ID or 
//we can pass the ami id by using filters
/*
data "aws_ami" "amzlinux" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}
*/

# data "aws_ami" "Amazon_linux" {
#     id = "ami-09da212cf18033880"
  
# }
//Passing the Security group id
data "aws_security_group" "sg" {
  id = "sg-0919c2937a8a49d21" #here we have to change your sg id details according to the region"

}


//Passing the subnet id
data "aws_subnet" "sub" {
    id = "subnet-00ead40e95966130c" #here we have to change your subnet id details according to the region"
  
}


