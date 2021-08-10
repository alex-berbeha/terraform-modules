resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = var.vpc_tags
}

resource "aws_internet_gateway" "IGW" {
  count  = var.internet_gateway_status == true ? 1 : 0
  vpc_id = aws_vpc.main.id
  tags   = var.igw_tags
}