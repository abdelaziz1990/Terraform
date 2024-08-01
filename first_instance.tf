provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "web" {
  ami                    = "ami-0b0a32ffc011bf8c2"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-2a"
  key_name               = "love-sg"
  vpc_security_group_ids = ["sg-067a6076c9de32a39"]
  tags = {
    Name = "love-Instance"
  }

}
