
resource "aws_lb_target_group" "samuel-ofori-tf-subnet-tg" {
    port = 80
    protocol = "HTTP"
    # target_type = "ip"
    vpc_id = aws_vpc.samuel-ofori-tf-vpc.id
  
}



resource "aws_lb_target_group_attachment" "samuel-ofori-tf-load-balancer-attachment1" {
    target_group_arn = aws_lb_target_group.samuel-ofori-tf-subnet-tg.arn
    target_id = aws_instance.samuel-ofori-tf-1.id

}


resource "aws_lb_target_group_attachment" "samuel-ofori-tf-load-balancer-attachment2" {
    target_group_arn = aws_lb_target_group.samuel-ofori-tf-subnet-tg.arn
    target_id = aws_instance.samuel-ofori-tf-2.id
    
}


resource "aws_lb" "samuel-ofori-tf-load-balancer" {
# resource "aws_alb" "samuel-ofori-tf-load-balancer" {
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.samuel-ofori-tf-sec-group.id]
  subnets            = [aws_subnet.samuel-ofori-subnet-tf-1.id, aws_subnet.samuel-ofori-subnet-tf-2.id]
  enable_deletion_protection = true
  tags = {
    Name            = "samuel-ofori-tf-app"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }

}

resource "aws_lb_listener" "samuel-ofori-load-balancer-listener" {
  load_balancer_arn = aws_lb.samuel-ofori-tf-load-balancer.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.samuel-ofori-tf-subnet-tg.arn
  }
}

