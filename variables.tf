variable "web-ssh-keyname" {
  type = string
}

variable "web-ssh-public_key_path" {
  type = string
}

variable "app-ssh-keyname" {
  type = string
}

variable "app-ssh-public_key_path" {
  type = string
}

#for security group
variable "web-sg-name" {
  type = string
}

variable "web-sg-port" {
  type = list(any)
}

variable "app-sg-name" {
  type = string
}

variable "app-sg-port" {
  type = list(any)
}

variable "main_vpc_id" {
  type = string
}
#for ec2 instance

variable "web-ami" {
  type = string
}

variable "web-ec2-type" {
  type = string
}

variable "app-ami" {
  type = string
}

variable "app-ec2-type" {
  type = string
}