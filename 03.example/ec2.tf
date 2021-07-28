resource "aws_instance" "samplr" {
  ami                      = "ami-074df373d6bafa625)"
  instance_type            = "t2.micro"
  vpc_security_group_ids   = []

  tags = {
    Name                  = "sample"
  }
}

resource "aws_security_group" "allow_ssh" {
  name                    = "allow_ssh"
  description             = "Allow ssh"


  ingress {
    description          = "ssh"
    from_port            = 22
    to_port              = 22
    protocol             = "tcp"
    cidr_blocks          = [0.0.0.0/0]
  }

  egress {
    from_port            = 0
    to_port              = 0
    protocol             = "-1"
    cidr_blocks          = ["0.0.0.0/0"]

  }

  tags = {
    Name                = "allow_tls"
  }
}
output "sg-attributes" {
  value = "aws_security group.all_ssh"
}
provider "aws" {
  region = "ua-east-1"
}