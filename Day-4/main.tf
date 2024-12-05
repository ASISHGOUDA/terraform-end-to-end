provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "asish" {
  instance_type = "t2.micro"
  ami           = "ami-0866a3c8686eaeeba"    # change this
  subnet_id     = "subnet-0184a699c88df7e6e" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "asish-s3-demo-xyz" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
