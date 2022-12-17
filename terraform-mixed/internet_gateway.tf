resource "aws_internet_gateway" "samuel-ofori-internet-tf-gateway" {
  vpc_id = aws_vpc.samuel-ofori-tf-vpc.id

  tags = {
    Name            = "samuel-ofori-tf-gateway"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }
}
