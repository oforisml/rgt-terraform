terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region = "us-east-2"

  // access_key="my_access_key"
  // secret_key="my_secret_key"
  shared_credentials_files = ["~/.aws/credentials"]
  # profile                  = "samuel.ofori.1ghana@develeap-course"
}
