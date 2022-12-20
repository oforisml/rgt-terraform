#### ami  ####
ami = "ami-0283a57753b18025b"

#### Instance type  ####
instance_type = "t2.micro"


#### subnet  #####
subnet = ["10.0.0.0/28", "10.0.0.16/28"]


#### Availability Zones ####
availability_zone = ["us-east-2a", "us-east-2b"]


#### Public CIDRs ###
pub_cidr = ["0.0.0.0/0"]


#### Private CIDRs ###
private_cidr = ["10.0.0.0/16"]


#### HTTP protocol ####
http_protocol = "HTTP"

#### HTTP ####
http = 80


#### SSH ####
ssh = 22


# #### vpc ####
# vpc = aws.vpc.id

#### Load balancer type ####
load_balancer_type = "application"


#### Security group protocol
security_group_protocol = "tcp"


#### Instance Enable DNS support? ####
enable_dns_support = "true"

enable_dns_hostnames = "true"

instance_tenancy = "default"
