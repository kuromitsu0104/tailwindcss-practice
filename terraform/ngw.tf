#############
# Elasti IP #
#############
# https://www.terraform.io/docs/providers/aws/r/eip.html
resource "aws_eip" "nat_1a" {
  vpc = true

  tags = {
    Name = "ome-report-bff-ngw-1a"
  }
}

###############
# NAT Gateway #
###############
# https://www.terraform.io/docs/providers/aws/r/nat_gateway.html
resource "aws_nat_gateway" "nat_1a" {
  subnet_id     = aws_subnet.public_1a.id
  allocation_id = aws_eip.nat_1a.id

  tags = {
    Name = "ome-report-bff-1a"
  }
}
