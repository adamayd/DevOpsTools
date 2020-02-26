variable "region" {
  default = "us-east-1"
}

variable "control_key_name" {
  default = "ansible_cloud"
}

variable "web_key_name" {
  default = "ansible_web"
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
    "ansible-web-1",
    "ansible-web-2",
    "ansible-web-3"
  ]
}
