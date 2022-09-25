provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-006d3995d3a6b963b"
  instance_type = "t2.micro"
  depends_on = [aws_s3_bucket.example]
}

# Create S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = "wezvatech-adam-demo-s3-sep22"
}
