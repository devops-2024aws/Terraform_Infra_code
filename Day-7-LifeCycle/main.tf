# Creating Ec2 instance by Passing the values from the Variables.tf file
resource "aws_instance" "Ec2_instance" {
     ami = var.Ami
     instance_type = var.instance_type
     key_name = var.keypair
     tags = {
       Name= "terraform-Ec2"
     }

     //Here we can ignore the maual changes
      lifecycle {
        ignore_changes = [ tags, ]
      }
     
     // It will create a new instance in drifferent region before destroying
    #  lifecycle {
    #    create_before_destroy = true
    #  }
    
    // We can destroy the instance untill it changes to flase

    #  lifecycle {
    #    prevent_destroy = true
    #  }
 }

