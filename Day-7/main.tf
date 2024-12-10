provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address          = "http://54.234.69.38:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id   = "fe8057f0-c78c-1c3b-5221-e62512b836c3"
      secret_id = "8725205c-0680-aa7a-05b3-b4726a9e15d2"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv"          // change it according to your mount
  name  = "test-secret" // change it according to your secret
}

resource "aws_instance" "my_instance" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  tags = {
    Name   = "test"
    Secret = data.vault_kv_secret_v2.example.data["username"]
  }
}
