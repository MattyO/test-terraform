provider "aws" {
    region = "us-east-2"
}

import {


  id = "i-0d69eec292811ae91"
  to = aws_instance.import-example
}

resource "aws_instance" "import-example" {
  ami           =  "ami-0862be96e41dcbf74"
  instance_type = "t2.micro"

  tags = {
    Name = "test-import"

  }
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
