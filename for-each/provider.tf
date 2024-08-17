terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "devops-with-balu"
    key    = "expense-for-loop"
    region = "us-east-1"
    dynamodb_table = "dynamo-DB--locking-s3"
  }
}

provider "aws" {
  region = "us-east-1"
}
