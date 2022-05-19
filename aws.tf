provider "aws" {
  region     = "us-east-2"
  access_key = "awsaccesskey"
  secret_key = "awssecretkey"
}
resource "aws_instance" "terraEC2" {
  ami           = "ami-0aeb7c931a5a61206"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-instance"
  }
}
