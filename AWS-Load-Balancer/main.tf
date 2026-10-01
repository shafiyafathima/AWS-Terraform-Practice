# ALB Security Group
resource "aws_security_group" "lb" {
  name   = var.security_group_name
  vpc_id = var.vpc_id

  ingress {
    description = "Allow HTTP from ALB"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  ingress {
    description = "Allow HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = var.tags
}


# EC2 Instances
resource "aws_instance" "lb_instance" {
  count = var.instance_count

  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.ec2_subnet_id[count.index]

  vpc_security_group_ids = [aws_security_group.ec2.id]

  associate_public_ip_address = true

  user_data = <<-EOF
#!/bin/bash

dnf install -y nginx

systemctl enable nginx
systemctl start nginx

echo "<h1>Hello from EC2 ${count.index + 1}</h1>" > /usr/share/nginx/html/index.html
echo "<p>Instance ID: $(curl -s http://169.254.169.254/latest/meta-data/instance-id)</p>" >> /usr/share/nginx/html/index.html
EOF

}

# ec2 Security group
resource "aws_security_group" "ec2" {
  name   = var.ec2_security_group_name
  vpc_id = var.vpc_id

  ingress {
    description     = "Allow HTTP from ALB"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.lb.id]
  }


  ingress {
    description = "Allow SSH from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["167.103.88.246/32"]
  }


  egress {
    description = "Allow All outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags
}

# Application Load Balancer

resource "aws_lb" "this" {
  name               = var.load_balancer_name
  internal           = var.internal
  load_balancer_type = "application"

  security_groups = [aws_security_group.lb.id]
  subnets         = var.subnet_id

  enable_deletion_protection = var.enable_deletion_protection

  tags = var.tags
}

# Target Group

resource "aws_lb_target_group" "this" {
  name        = var.target_group_name
  port        = var.target_group_port
  protocol    = var.target_group_protocol
  target_type = var.target_type
  vpc_id      = var.vpc_id

  health_check {
    enabled             = true
    path                = var.health_check_path
    protocol            = var.target_group_protocol
    port                = "traffic-port"
    healthy_threshold   = 3
    unhealthy_threshold = 3
    timeout             = 5
    interval            = 30
    matcher             = "200-399"
  }

  tags = var.tags

}

# Register EC2 Instance with TG

resource "aws_lb_target_group_attachment" "ec2" {
  count = var.instance_count

  target_group_arn = aws_lb_target_group.this.arn
  target_id        = aws_instance.lb_instance[count.index].id
  port             = 80
}

# ALB Listener

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.this.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }
  tags = var.tags
}
