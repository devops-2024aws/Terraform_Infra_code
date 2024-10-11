//Creating Custom VPC

resource "aws_vpc" "cust-vpc" {
    tags = {
      name="vpc-Cust"
    }

    cidr_block = "10.0.0.0/16"
  
}

//Creating the custom subnet
resource "aws_subnet" "subnet-01" {
    vpc_id = aws_vpc.cust-vpc.id
    tags = {
      name="cust-sub-01"
    }
    cidr_block = "10.0.0.0/24"
  
}

//Creating Internet gateway
resource "aws_internet_gateway" "IGW" {
    tags = {
      name="Cust-Igw"
    }
    vpc_id = aws_vpc.cust-vpc.id
  
}

//Creating Route table
resource "aws_route_table" "rgt" {
    tags = {
      name="cust-rgt"
    }
    vpc_id = aws_vpc.cust-vpc.id
    //Edit Routes
    route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
    }
  
}

//Subnet Association
resource "aws_route_table_association" "subass" {
    route_table_id = aws_route_table.rgt.id
    subnet_id=aws_subnet.subnet-01.id
  
}

//Creating Security Group

resource "aws_security_group" "aws_sg" {
    tags = {
      name="Cust-sg"
    }
    vpc_id = aws_vpc.cust-vpc.id

    ingress {
    description = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

    }
}

# Creating Ec2 instance by Passing the values from the Variables.tf file
resource "aws_instance" "Ec2_instance" {
     ami = var.Ami
     instance_type = var.instance_type
     key_name = var.keypair
     tags = {
        Name="Terraform-Ec2"
     }
 }
