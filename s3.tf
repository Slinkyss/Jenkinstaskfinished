resource "aws_s3_bucket" "bucket" {
  bucket = "slinkis-bucket-jenkins"
}

resource "aws_s3_bucket_acl" "bucket_bucket_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_object" "object" {

for_each = fileset("files/", "**")

bucket = aws_s3_bucket.bucket.id

key = each.value

source = "files/${each.value}"

etag = filemd5("files/${each.value}")
}