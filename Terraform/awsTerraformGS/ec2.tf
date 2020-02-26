provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "web-servers" {
  count         = length(var.web-servers)
  ami           = var.ami-amazon-linux
  instance_type = var.instance-t2micro
  tags = {
    Name = element(var.web-servers, count.index)
  }
}
