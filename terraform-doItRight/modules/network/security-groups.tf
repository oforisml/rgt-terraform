resource "aws_security_group" "samuel-ofori-tf-sec-group" {
  vpc_id = aws_vpc.samuel-ofori-tf-vpc.id
  
  ingress {
    from_port   = var.ssh
    to_port     = var.ssh
    protocol    = var.security_group_protocol
    cidr_blocks = var.pub_cidr
  }

  ingress {
    from_port   = var.http
    to_port     = var.http
    protocol    = var.security_group_protocol
    cidr_blocks = var.pub_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.pub_cidr
  }

  tags = {
    Name            = "samuel-ofori-tf-sec-group"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }

}
