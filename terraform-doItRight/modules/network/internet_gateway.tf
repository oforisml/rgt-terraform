resource "aws_internet_gateway" "samuel-ofori-internet-tf-gateway" {
  vpc_id = var.output_vpc

  tags = {
    Name            = "samuel-ofori-tf-gateway"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }
}
