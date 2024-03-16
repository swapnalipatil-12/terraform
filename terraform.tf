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
  access_key = "AKIA3ZGGBNNYMUCUQINY"
  secret_key = "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"
}

resource "aws_instance" "my_instance" {
  ami = "ami-015f72d56355ebc27"
  instance_type = "t2.large"
  key_name = "demo2"
  vpc_security_group_ids = ["sg-043de1fc3acc37e1c"]
}