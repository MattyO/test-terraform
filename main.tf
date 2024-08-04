provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "example" {
  ami           =  "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"

  tags = {
    Name = "test-instance"

  }
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.example.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.example.public_ip
}
