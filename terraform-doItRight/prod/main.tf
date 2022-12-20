module "COMPUTE" {
  source = "../modules/compute"
  
  # Ami
  ami = var.ami

  # Instance type
  instance_type = var.instance_type

  # Subnet
  subnet = var.subnet

  # Availability zone
  availability_zone = var.availability_zone

  # Public CiDR
  pub_cidr = var.pub_cidr

  # HTTP
  http = var.http


  # SSH
  ssh = var.ssh
}
