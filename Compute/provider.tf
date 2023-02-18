terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
  region     = "us-east-2"
  access_key = "my key"
  secret_key = "my key"
}


# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "main"
  }
}
