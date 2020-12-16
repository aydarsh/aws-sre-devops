resource "aws_s3_bucket" "bucket" {
  acl    = "public-read"
 
  website {
    index_document = "../files/index.html"
  }
}