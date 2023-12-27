variable "vpc_id" {
  type = string
}

variable "sg-port" {
  type = list(any)
}

variable "sg-name" {
  type = string
}