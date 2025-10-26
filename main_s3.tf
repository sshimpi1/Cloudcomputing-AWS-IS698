provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
 bucket = "lab6-srishti-new-bucket-2025" # must be globally unique
#  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration { status = "Enabled" }
}
