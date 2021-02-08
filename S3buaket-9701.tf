resource "aws_s3_bucket" "kp-9701" {
  bucket = "kp-9701"
  acl    = "private"

  tags = {
    Name        = "kp-9701"
    Environment = "Dev"
  }
}
