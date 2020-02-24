provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "gs-example1" {
  ami           = var.ami-amazon-linux
  instance_type = var.instance-t2micro
  tags = {
    Name = "gs-example1"
  }
}
