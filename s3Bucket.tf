resource "aws_s3_bucket" "kp-8657" {
  bucket = "kp-8657"
  acl    = "private"

  tags = {
    Name        = "kp-8657"
    Environment = "Dev"
  }
}
