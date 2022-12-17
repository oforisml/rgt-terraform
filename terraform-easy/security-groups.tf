resource "aws_security_group" "samuel-ofori-tf-sec-group" {
  vpc_id = aws_vpc.samuel-ofori-tf-vpc.id
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name            = "samuel-ofori-tf-sec-group"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }

}
