provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "ansible-control" {
  ami           = var.ami-amazon-linux
  instance_type = var.instance-t2micro
  tags = {
    Name = "ansible-control"
  }
  key_name = var.control_key_name
}

resource "aws_instance" "ansible-web" {
  count         = length(var.web-servers)
  ami           = var.ami-amazon-linux
  instance_type = var.instance-t2micro
  tags = {
    Name = element(var.web-servers, count.index)
  }
  key_name = var.web_key_name
}
