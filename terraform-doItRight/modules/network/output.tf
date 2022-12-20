output "output_subnets"{
    value = [for subnet in aws_subnet.samuel-ofori-subnet-tf-:subnet.id]
    description = "Subnets"
}


output "output_security_group"{
    value = [aws_security_group.samuel-ofori-tf-sec-group.id]
    description = "Security group"
}   