output "VPC_id" {
  value       = aws_vpc.main.id
  description = "The ID of the VPC"
}

output "igw_id" {
  value = aws_internet_gateway.IGW.id[0]
  description = "Internet gateway's ID"
}