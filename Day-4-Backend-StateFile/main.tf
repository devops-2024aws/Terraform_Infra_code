//Writing the backend script to store the state file into s3 bucket

terraform {
  backend "s3" {
     bucket = "naresh1999"
     key = "terraform.tfstate"
     region = "us-east-1"

    
  }
}