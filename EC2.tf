terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.20.0"
    }
  }
}



resource "aws_instance" "Web" {
  ami           = "ami-0305d3d91b9f22e84"
  instance_type = "t2.nano"

  tags = {
    Name = "Task"
  }
}

resource "aws_s3_bucket" "task-s3" {
  bucket = "prod-atul2599-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Atul"
  }
}