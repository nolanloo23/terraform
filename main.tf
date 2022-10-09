terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.34.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_instance" "app_server2" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstancelinux"
  }
}