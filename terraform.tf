terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.40.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
  access_key = "AKIA3ZGGBNNYLLAMC3R2"
  secret_key = "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"
}

resource "aws_instance" "my_instance" {
  ami = "ami-0123c9b6bfb7eb962"
  instance_type = "t2.large"
  key_name = "demo2"
  vpc_security_group_ids = ["sg-043de1fc3acc37e1c"]
}