resource "aws_security_group" "this-sg" {
  vpc_id = var.vpc_id
  name   = var.sg-name
}


resource "aws_security_group_rule" "example" {
  count             = length(var.sg-port)
  type              = "ingress"
  from_port         = var.sg-port[count.index]
  to_port           = var.sg-port[count.index]
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.this-sg.id
}

resource "aws_security_group_rule" "allow_all" {
  count             = length(var.sg-port)
  type              = "egress"
  to_port           = var.sg-port[count.index]
  protocol          = "tcp"
  from_port         = var.sg-port[count.index]
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.this-sg.id
}
