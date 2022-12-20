variable "ami" {
    type = string
    description = "Samuel Ofori AMI ID"
    # default = "ami-0283a57753b18025b"
}
  
variable "instance_type" {
    type = string
    description = "Samuel Ofori Instances Type"
    # default = "t2.micro"
}

variable "output_subnets" {
    type = list
}

variable "output_security_group" {
    type = list
}