// Create internet gateway to access to internet
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  depends_on = [aws_vpc.vpc]
  tags = {
    Name = "igw"
  }
}
