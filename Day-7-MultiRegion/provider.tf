# Provider 1 form us-east-2 (Default Provider)
provider "aws" {
    region = "us-east-2"
  
}

# Another provider from ap-south-1
provider "aws" {
    region = "ap-south-1"
    alias = "Apsouth"
  
}