provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "gs-example" {
  ami           = "ami-0a887e401f7654935"
  instance_type = "t2.micro"
  tags = {
    Name = "change_my_instance"
  }
}
