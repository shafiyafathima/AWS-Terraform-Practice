resource "aws_instance" "demo_vm" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_groups_ids

  associate_public_ip_address = false

  tags = {
    Name = var.instance_name
  }
}