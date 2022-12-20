
resource "aws_lb_target_group" "samuel-ofori-tf-subnet-tg" {
  port     = var.http
  protocol = var.http_protocol
  # target_type = "ip"
  vpc_id = aws_vpc.samuel-ofori-tf-vpc.id

  tags = {
    Name            = "samuel-ofori-tf-subnet-tg"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }
}


resource "aws_lb_target_group_attachment" "samuel-ofori-tf-load-balancer-attachment" {
  count = 2
  target_group_arn = aws_lb_target_group.samuel-ofori-tf-subnet-tg.arn
  target_id        = "${var.output_instances[count.index]}"
}

resource "aws_lb" "samuel-ofori-tf-load-balancer" {
  # resource "aws_alb" "samuel-ofori-tf-load-balancer" {
  internal           = false
  load_balancer_type = var.load_balancer_type
  security_groups    = [aws_security_group.samuel-ofori-tf-sec-group.id]
  
  subnets            = [aws_subnet.samuel-ofori-subnet-tf-[1].id, aws_subnet.samuel-ofori-subnet-tf-[0].id]
  enable_deletion_protection = true
  tags = {
    Name            = "samuel-ofori-tf-load-balancer"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }

}

resource "aws_lb_listener" "samuel-ofori-load-balancer-listener" {
  load_balancer_arn = aws_lb.samuel-ofori-tf-load-balancer.arn
  port              = var.http
  protocol          = var.http_protocol

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.samuel-ofori-tf-subnet-tg.arn
  }

  tags = {
    Name            = "samuel-ofori-tf-load-balancer-listenr"
    owner           = "Samuel Ofori"
    bootcamp        = "ghana1"
    expiration_date = "28-02-23"
  }
}

