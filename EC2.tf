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
