resource "aws_instance" "Terraform2" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  key_name      = "Test"
  #security_group="WebDMZ"

  tags = {
    Name = "Terraform2"
  }

}

output "ip2" {
  value = "${aws_instance.Terraform2.public_ip}"
 
}

