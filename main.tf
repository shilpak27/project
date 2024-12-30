resource "aws_instance" "my-ec2" {
   ami = "ami-0fd05997b4dff7aac"
  instance_type = "t2.micro"
  count = 2

  tags = {
    Name = "my-ec2-machines"

    
  }
}
