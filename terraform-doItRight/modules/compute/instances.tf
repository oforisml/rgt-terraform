resource "aws_instance" "samuel-ofori-tf" {
  count = 2
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = var.output_subnets[count.index]
  
  vpc_security_group_ids = var.output_security_group
  associate_public_ip_address = true
  tags = {
    Name            = "samuel-ofori-tf-instance${count.index}"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }

}