resource "aws_vpc" "myvpc" {
 cidr_block = var.vpcCIDRblock
  tags = {
    Name = "myvpc"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_subnet

}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_subnet

}

resource "aws_internet_gateway" "kgw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "kgw"
  }
}
