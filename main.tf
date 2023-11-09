terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "procare-app" {
  ami           = "ami-0ec3d9efceafb89e0" # Debian 12 HVM
  instance_type = "t2.small"
}
