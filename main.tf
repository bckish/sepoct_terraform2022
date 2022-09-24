# Specify the AWS details
provider "aws" {
  region = "ap-south-1"
}

# Specify the EC2 details
resource "aws_instance" "example" {
  ami           = "ami-006d3995d3a6b963b"
  instance_type = "t2.micro"
}

# Create S3 bucket
resource "aws_s3_bucket" "example" {
  # NOTE: S3 bucket names must be unique across _all_ AWS accounts
  bucket = "wezvatech-adam-demo-s3-sep22"
}