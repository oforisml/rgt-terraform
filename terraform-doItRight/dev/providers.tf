terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "samuel-ofori-tf-s3-backend"
    key = "rgt/terraform/state/dev"
    region = "us-east-2"
  }
}
provider "aws" {
  region = "us-east-2"
  shared_credentials_files = ["~/.aws/credentials"]
}
