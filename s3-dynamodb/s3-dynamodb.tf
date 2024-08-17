resource "aws_s3_bucket" "my_pre_prod_s3_bucket" {
  bucket = "my-pre-prod-bucket"
}

resource "aws_s3_bucket_versioning" "my_pre_prod_s3_bucket_versioning" {
  bucket = aws_s3_bucket.my_pre_prod_s3_bucket.bucket
  versioning_configuration {
    status = "Enabled"
  }
}


resource "aws_dynamodb_table" "pre-prod-table" {
  name         = "pre-prod-table"
  billing_mode = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
 
}

  
