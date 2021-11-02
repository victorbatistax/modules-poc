terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
      region = "us-east-1"
    }
  }
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name =  var.key_name
  
  tags = {
    Name = "FrontEnd"
  }
}

resource "aws_instance" "backend" {
  ami           = var.ami
  instance_type = var.instance_type_be
  key_name =  var.key_name
  
  tags = {
    Name = "BankEnd"
  }
}

