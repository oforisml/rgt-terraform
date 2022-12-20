module "COMPUTE" {
  source = "../modules/compute"

      # Ami
  ami = var.ami

  # Instance type
  instance_type = var.instance_type
  

  # OUTPUT_SUBNETS
  output_subnets = module.NETWORK.output_subnets

  # OUTPUT_SECURITY_GROUP
  output_security_group = module.NETWORK.output_security_group

}


module "NETWORK" {
  source = "../modules/network"

  # Subnet
  subnet = var.subnet

  # Availability zone
  availability_zone = var.availability_zone

  # Public CiDR
  pub_cidr = var.pub_cidr

  # HTTP
  http = var.http

  # HTTP Protocol
  http_protocol = var.http_protocol

  # SSH
  ssh = var.ssh

  # Private_CIDR
  private_cidr = var.private_cidr


  # Instance Tenancy
  instance_tenancy = var.instance_tenancy


  # Security Group protocol
  security_group_protocol = var.security_group_protocol

  # Load balancer type
  load_balancer_type = var.load_balancer_type


  # Enable DNS SUPPORT
  enable_dns_support = var.enable_dns_support

  # Enable DNS hostnames
  enable_dns_hostnames = var.enable_dns_hostnames

  # Instances
  output_instances = module.COMPUTE.output_instances

}