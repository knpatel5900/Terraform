Resource "aws_s3_bucket" "example2" {
  bucket = "kp-bucket2"
  acl    = "private"
  tags = {
    Name = "kpbucket2"
  }
