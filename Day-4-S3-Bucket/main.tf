//Creating S3 Bucket to store the terraform.tfstate file

resource "aws_s3_bucket" "buckets3" {
    bucket = "naresh1999"
  
}


//Enabling the s3 versioning to store the terraform state file

//Terraform state file it contains each and every details about the bucket/instance after we run
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.buckets3.id
  versioning_configuration {
    status = "Enabled"
  }
}