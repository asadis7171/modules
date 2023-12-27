

resource "aws_instance" "this-instance" {
  ami             = var.ami-id
  instance_type   = var.ec2-type
  key_name        = var.keyname
  vpc_security_group_ids = [var.security-groups]
  }