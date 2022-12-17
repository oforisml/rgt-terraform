resource "aws_instance" "samuel-ofori-tf-1" {
  ami = "ami-0283a57753b18025b"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.samuel-ofori-subnet-tf-1.id
  
  vpc_security_group_ids = [aws_security_group.samuel-ofori-tf-sec-group.id]
  associate_public_ip_address = true
  tags = {
    Name            = "samuel-ofori-tf-instance1"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }

}

resource "aws_instance" "samuel-ofori-tf-2" {
  ami = "ami-0283a57753b18025b"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.samuel-ofori-subnet-tf-2.id
  vpc_security_group_ids = [aws_security_group.samuel-ofori-tf-sec-group.id]
  associate_public_ip_address = true
  tags = {
    Name            = "samuel-ofori-tf-instance2"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }
}