variable "region" {
  default = "us-east-1"
}

variable "ami-amazon-linux" {
  default = "ami-0a887e401f7654935"
}

variable "instance-t2micro" {
  default = "t2.micro"
}

variable "web-servers" {
  type = list(string)
  default = [
    "ws-1",
    "ws-2",
    "ws-3",
    "ws-4"
  ]
}
