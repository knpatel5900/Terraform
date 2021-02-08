resource "aws_s3_bucket" "kp-6000" {
  bucket = "kp-6000"
  acl    = "private"

  tags = {
    Name        = "kp-6000"
    Environment = "Dev"
  }
}