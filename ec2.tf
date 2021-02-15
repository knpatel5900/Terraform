resource "aws_instance" "terraform" {
  ami             = "ami-0323c3dd2da7fb37d"
  instance_type   = "t2.micro"
  key_name        = "mykey"
  security_groups = [ aws_security_group.terraform_sg.id ]
  subnet_id       = aws_subnet.public_subnet.id
  tags = {
    Name = "terraform"
  }

}

output "ip" {
  value = "${aws_instance.terraform.private_ip}"
}