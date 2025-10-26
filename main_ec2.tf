provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-07860a2d7eb515d9a"  # replace with valid AMI for region
  instance_type = "t3.micro"
  key_name      = "Srishti_New_KeyPair"      # must exist in region
  tags = { Name = "lab-ec2-minimal" }
}