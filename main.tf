provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0ea3c35c5c3284d82" # Amazon Linux 2
  instance_type = "t2.micro"
  key_name      = "automation"

  tags = {
    Name = "HarishRoy"
  }

  user_data = file("user_data.sh")
}

output "instance_ip" {
  value = aws_instance.example.public_ip
}

