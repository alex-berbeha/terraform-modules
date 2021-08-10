
resource "aws_security_group" "security_group" {
  name   = var.sg_name
  vpc_id = var.vpc_id
  dynamic "ingress" {
    for_each = var.ingress_allows_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = var.protocol
      cidr_blocks = var.cidr_list
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.sg_tags
}