resource "aws_subnet" "samuel-ofori-subnet-tf-" {
  count             = 2
  vpc_id            = var.output_vpc
  cidr_block        = var.subnet[count.index]
  availability_zone = var.availability_zone[count.index]

  tags = {
    Name            = "samuel-ofori-tf-subnet${count.index}"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }
}