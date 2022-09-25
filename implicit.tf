# Specify the AWS details
provider "aws" {
  region = "ap-south-1"
}

resource "aws_eip" "ip" {
  instance = aws_instance.example.id
}

resource "aws_instance" "example" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
}