output "VPC_id" {
  value       = aws_vpc.main.id
  description = "The ID of the VPC"
}

output "igw_id" {
  value = aws_internet_gateway.IGW[0].id
  description = "Internet gateway's ID"
}