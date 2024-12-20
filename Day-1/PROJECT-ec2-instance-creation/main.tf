provider "aws" {
  region = "us-east-1" # Set your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0866a3c8686eaeeba" # Specify an appropriate AMI ID
  instance_type = "t2.micro"
  subnet_id     = "subnet-0184a699c88df7e6e"
  key_name      = "mern-key"

  tags = {
    Name = "Terraform-Createdd-Instance" # Desired name for EC2 instance
  }
}
