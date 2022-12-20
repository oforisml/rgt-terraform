resource "aws_vpc" "samuel-ofori-tf-vpc" {
  cidr_block           = var.private_cidr[0]
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  instance_tenancy     = var.instance_tenancy

  tags = {
    Name            = "samuel-ofori-vpc"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }
}
