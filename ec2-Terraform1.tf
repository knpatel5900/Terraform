resource "aws_instance" "Terraform1" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  key_name      = "Test"
  #security_group="WebDMZ"

  tags = {
    Name = "Terraform1"
  }

}

output "ip1" {
  value = "${aws_instance.Terraform1.public_ip}"
 
}

