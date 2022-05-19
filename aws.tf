provider "aws" {
  region     = "ap-south-1"
  access_key = "awsaccesskey"
  secret_key = "awssecretkey"
}
resource "aws_instance" "terraEC2" {
  ami           = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  key_name      = "terraformkp"
  tags = {
    Name = "na-instance"
  }
}
resource "aws_key_pair" "terraformkp" {
  key_name   = "terraformkp"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCk8w1SplfKIcVHdM+Ubh/XGpwiqsFmGMwHl3j39tBVQR43AbUPE5n/B/2EAOigAearX2QUJdmbNFP5147FNP2mRVpk8VrzL+gRQqvQG0sfJl0rJrxQFX+KNuz9asdy5Wfz//U1jj0YNp9iKs7Pc8Jm8h9vbpN5/iFM8m1B/i9ebdpa3MZ+8H1O7qw43CVhrsALLiqu0Ug0AZ8oq87rdnhH+VzEacWFaJNWv/jr5ZXqhjpXtquaeMGz8wkqdFV/hztH7cPNaJhDOjyuRf6JPVx4Q6roN991Zik1MdYfHuvcoJ+HgM95y8KEFFojj6JknpudyjyvbasA3kmmHLR6Eh+7 root@ip-172-31-0-21.ap-south-1.compute.internal"
}
