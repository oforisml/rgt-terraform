variable "ami" {
    type = string
    description = "Samuel Ofori AMI ID"
    default = "ami-0283a57753b18025b"
}
  
variable "instance_type" {
    type = string
    description = "Samuel Ofori Instances Type"
    default = "t2.micro"
}

variable "subnet" {
    type = list
    default = ["10.0.0.0/28", "10.0.0.16/28"  ]
}

variable "availability_zone" {
  type = list
  default = ["us-east-2a", "us-east-2b"]
}

# variable "subnet_name" {
#   type = list
#   default = [aws_subnet.samuel-ofori-tf-[0], aws_subnet.samuel-ofori-tf-[1]]
# }

variable "pub_cidr" {
    type = list
    default = ["0.0.0.0/0"]  
}

variable "http" {
    type = number
    default = 80
}

variable "ssh" {
    type = number
    default = 22
  
}