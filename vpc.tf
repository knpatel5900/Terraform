resource "aws_vpc" "Terraform_VPC" {
 cidr_block = var.vpcCIDRblock
 instance_tenancy = var.instanceTenancy

  tags = {
    Name = "Terraform_VPC"
  }
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











