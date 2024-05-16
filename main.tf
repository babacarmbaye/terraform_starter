terraform {
  required_providers {
    aws = {
        source     = "hashicorp/aws"
        version = "5.49.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-3"
}

resource "aws_instance" "vm-web" {
  ami           = "ami-0288d9523e7053c23"
  instance_type = "t2.micro"

  tags = {
    lab = "starter"
  }
}