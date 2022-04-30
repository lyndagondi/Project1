provider "aws" {
  region     = "us-east-2"
  access_key = "AKIA3CJ6S4UBX6B2MAZT"
  secret_key = "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"
}
resource "aws_instance" "terraEC2" {
  ami           = "ami-0aeb7c931a5a61206"
  instance_type = "t2.micro"
  tags = {
    Name = "firstec2"
  }
}
