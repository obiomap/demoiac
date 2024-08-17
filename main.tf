provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-080e1f13689e07408" # Replace with your AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins-Terraform-EC2"
  }
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
