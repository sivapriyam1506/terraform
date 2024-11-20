provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "three" {
  count = 10
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  tags = {
    Name = "abc-server"
    Environment = "abcd"
    Owner       = "raham"
  }
}
