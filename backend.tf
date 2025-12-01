terraform {
  backend "s3" {
    bucket = "prod-atul2599-bucket"
    key    = "vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

