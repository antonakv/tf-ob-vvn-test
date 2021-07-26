terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.5"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}
/* 
resource "aws_instance" "ubuntu" {
  ami                    = "ami-0baa12826217a765e"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0bd84ce188324d46e"]
  subnet_id              = "subnet-012194dc5908844e1"

  tags = {
    Name = "test"
  }
} */
