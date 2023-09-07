terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.13.1"
    }
  }
 backend "s3" {
    bucket = "terraform-pro-s3"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-states"
 }
}
