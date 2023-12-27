resource "aws_key_pair" "this-key" {
  key_name   = var.keyname
  public_key = file(var.public_key_path)
}