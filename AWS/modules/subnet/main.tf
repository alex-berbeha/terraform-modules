resource "aws_subnet" "subnet" {
  vpc_id                  = var.main_vpc
  cidr_block              = var.subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = var.map_public_ip
  tags                    = var.subnet_tags
}