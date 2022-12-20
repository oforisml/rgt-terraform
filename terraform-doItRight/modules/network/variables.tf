variable "subnet" {
    type = list
}

variable "availability_zone" {
  type = list
}

variable "pub_cidr" {
    type = list
}

variable "http_protocol" {
  type = string
}

variable "http" {
    type = number
}

variable "ssh" {
    type = number
}


variable "load_balancer_type"{
    type = string
}

variable "security_group_protocol"{
    type = string
}

variable "enable_dns_support" {
    type = bool
}

variable "enable_dns_hostnames"{
    type = bool
}

variable "instance_tenancy"{
    type = string
}

variable "private_cidr"{
    type = list
}

variable "output_instances"{
    type = list
}