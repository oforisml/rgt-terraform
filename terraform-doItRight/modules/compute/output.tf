output "output_instances" {
    value = [for instance in aws_instance.samuel-ofori-tf:instance.id]
    description = "VPC ids"
}