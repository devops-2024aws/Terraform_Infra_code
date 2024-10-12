resource "aws_s3_bucket" "Bucket" {
    bucket = "naresh091999"
  
}

resource "aws_s3_bucket" "Bucket-2" {
    bucket = "naresh0915"
    provider = aws.Apsouth # here we are passing the provider.aliasName 
    //my provider is aws and may alias name Apsouth
  
}