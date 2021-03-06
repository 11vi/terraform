resource "aws_instance" "sample" {
  ami                   = "ami-074df373d6bafa625"
  instance_type         = "t3.micro"
  tags                  = {
    Name                = "Sample"
  }
}

provider "aws" {
  region  ="us-east-1"
}

terraform {
  backend "s3" {
    bucket  ="terraform-v11"
    key     ="sample/terraform.tfstate"
    region  ="us-east-1"
  }
}
