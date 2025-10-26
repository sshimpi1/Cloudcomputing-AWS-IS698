# ---------- Provider Configuration ----------
provider "aws" {
  region = "us-east-1"   # Change if needed
}

# ---------- VPC ----------
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "srishti-vpc"
  }
}

# ---------- Public Subnet ----------
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "srishti-public-subnet"
  }
}

# ---------- Private Subnet ----------
resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "srishti-private-subnet"
  }
}