provider "aws" {
  region = "us-east-1" # Change to your desired region
}

resource "aws_instance" "instance_1" {
  ami           = "ami-0fd05997b4dff7aac" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"              # Change to your desired instance type

  tags = {
    Name = "Instance-1"
  }
}

resource "aws_instance" "instance_2" {
  ami           = "ami-0fd05997b4dff7aac" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"              # Change to your desired instance type

  tags = {
    Name = "Instance-2"
  }
}

output "instance_1_public_ip" {
  value = aws_instance.instance_1.public_ip
}

output "instance_2_public_ip" {
  value = aws_instance.instance_2.public_ip
}
