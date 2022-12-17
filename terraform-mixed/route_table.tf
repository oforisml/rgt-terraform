resource "aws_route_table" "samuel-ofori-tf-route-table" {
  // Linking a route table to a subnet
  vpc_id = aws_vpc.samuel-ofori-tf-vpc.id

  // Creating route
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.samuel-ofori-internet-tf-gateway.id
  }


  tags = {
    Name            = "samuel-ofori-tf-route-table"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }
}


resource "aws_route_table_association" "samuel-ofori-assoc" {
    count = 2
    subnet_id      = "${var.subnet_name[count.index]}.id"
    route_table_id = aws_route_table.samuel-ofori-tf-route-table.id
}

# resource "aws_route_table_association" "samuel-ofori-assoc-2" {
#   subnet_id      = aws_subnet.samuel-ofori-subnet-tf-2.id
#   route_table_id = aws_route_table.samuel-ofori-tf-route-table.id


# }
