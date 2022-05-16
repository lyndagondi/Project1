provider "aws" {
  region     = "ap-south-1"
  access_key = "awsaccesskey"
  secret_key = "awssecretkey"
}
resource "aws_instance" "terraEC2" {
  ami           = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  tags = {
    Name = "firstec2"
  }
}
