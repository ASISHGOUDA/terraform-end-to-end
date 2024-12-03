provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source              = "./modules/ec2_instance"
  ami_value           = "ami-0866a3c8686eaeeba" # replace this
  instance_type_value = "t2.micro"
  subnet_id_value     = "subnet-0184a699c88df7e6e" # replace this
  tag_value           = "Terraform-Created-Instance"
}
