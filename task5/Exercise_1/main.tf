# TODO: Designate a cloud provider, region, and credentials
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  profile = "udacity"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami           = "ami-02f3f602d23f1659d"
  subnet_id     = "subnet-020bfba5a20aa0a32"
  instance_type = "t2.micro"
  count         = 4
  tags = {
    "topic" = "udacity"
    "name"  = "Udacity T2"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
  ami           = "ami-02f3f602d23f1659d"
  subnet_id     = "subnet-020bfba5a20aa0a32"
  instance_type = "m4.large"
  count         = 2
  tags = {
    "topic" = "udacity"
    "name"  = "Udacity M4"
  }
}
