
terraform {
  backend "s3" {
    bucket         = "UC01-bucket"
    key            = "terraform/statefile.tfstate"
    region         = "eu-west-2"
  #  dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = "eu-west-2"
}
