terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.29.0"
    }
  }

  backend "s3" {
    bucket = "roboshopbucket"
    region = "us-east-1"
    dynamodb_table = "roboshop-dynamotable"
  }
}

provider "aws" {
  # Configuration options

  region = "us-east-1"
}

