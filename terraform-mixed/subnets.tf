resource "aws_subnet" "samuel-ofori-subnet-tf-" {
  count             = 2
  # name              = "${var.subnet_name[count.index]}"
  vpc_id            = aws_vpc.samuel-ofori-tf-vpc.id
  cidr_block        = var.subnet[count.index]
  availability_zone = var.availability_zone[count.index]

  tags = {
    Name            = "samuel-ofori-tf-subnet${count.index}"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }
}


# resource "aws_subnet" "samuel-ofori-subnet-tf-2" {
#   vpc_id            = aws_vpc.samuel-ofori-tf-vpc.id
#   cidr_block        = "10.0.0.16/28"
#   availability_zone = "us-east-2b"

#   tags = {
#     Name            = "samuel-ofori-tf-subnet2"
#     owner           = "Samuel Ofori"
#     bootcamp        = "ghana1"
#     expiration_date = "28-02-23"
#   }
# }
