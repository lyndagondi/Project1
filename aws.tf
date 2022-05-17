provider "aws" {
  region     = "ap-south-1"
  access_key = "awsaccesskey"
  secret_key = "awssecretkey"
}
resource "aws_instance" "terraEC2" {
  ami           = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  key_name      = "iackp"
  tags = {
    Name = "firstec2"
  }
}
resource "aws_key_pair" "terraformkp" {
  key_name   = "iackp"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDLQVsM9XAP28A8VoK8NZmguIaL9zq0cbNn3Qw9A8I9TQrbmx3giY5OqWt5r477SWBUy6J0UveO6ItkBLu8DrON0AGToJQVI2O//dJKjUC469YpdB2xLHUL0Ys+kauEb9/M4meZ/3S5lFFsiyU2a0m1Pe1lIez6shIBwvlCkJTKDi1HIlJ01LbeWaXnSA/2NWbiRpoHZQJqYOfVgQfICTA4WgIwYcjfeYlhSCZaWQcAIsXC1BVDZZ6/uFVY+an3cxal5+xr282ZJIHpo9dpPPEjGa2uc+ol7Y1IuzLJZE4tzYyj53lLS+7y3Z/hLpJYzzn1Evut+LBkKFIah+TcIldx root@ip-172-31-0-21.ap-south-1.compute.internal"
}
