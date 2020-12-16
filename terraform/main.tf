resource "aws_s3_bucket" "bucket" {
  acl    = "public-read"
 
  website {
    index_document = "index.html"
  }
}

resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.bucket.id
  key    = "index.html"
  source = "../files/index.html"
}