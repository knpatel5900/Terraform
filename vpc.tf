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
resource "aws_subnet" "my-subnet" {
  vpc_id                  = aws_vpc.Terraform_VPC.id
  cidr_block              = var.subnetCIDRblock_my
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone
tags = {
   Name = "my-subnet"
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











