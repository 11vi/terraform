resource "aws_instance" "sample" {
  ami                   = ""
  instance_type         = "t3.micro"
  vpc_security_group_ids = []

  tags                  = {
    Name                = "Sample"
  }
}

