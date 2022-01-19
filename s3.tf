resource "aws_s3_bucket" "eb_bucket" {
  bucket = "eb-desafio"
}
resource "aws_s3_bucket_object" "eb_bucket_obj" {
  bucket = aws_s3_bucket.eb_bucket.id
  key    = "app.zip"
  source = "app.zip"
}