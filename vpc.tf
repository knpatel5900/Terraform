resource "aws_vpc" "Terraform_VPC" {
 cidr_block = var.vpcCIDRblock
 instance_tenancy = var.instanceTenancy

  tags = {
    Name = "Terraform_VPC"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.Terraform_VPC.id
  cidr_block              = var.subnetCIDRblock_public
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone
tags = {
   Name = "public_subnet"
}
}
resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.Terraform_VPC.id
  cidr_block              = var.subnetCIDRblock_private
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone
tags = {
   Name = "private_subnet"
}
}


output "Name" {
  value = aws_vpc.Terraform_VPC.tags
   description  = "This Name of VPC"
}

output "cidr" {
  value = aws_vpc.Terraform_VPC.cidr_block
  description = "This is CIDR_Block"
}

output "public_subnet_name" {
  value = aws_subnet.public_subnet.tags
  description = "This is Public_Subnet"
}
output "public_subnet_AZ" {
  value = aws_subnet.public_subnet.availability_zone
  description = "This is AZ"
}

output "private_subnet_name" {
  value = aws_subnet.private_subnet.tags
  description = "This is Public_Subnet"
}
output "private_subnet_AZ" {
  value = aws_subnet.private_subnet.availability_zone
  description = "This is AZ"
}











