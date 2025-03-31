
terraform {
  backend "s3" {
    bucket         = "uc01-bucket"
    key            = "terraform/statefile.tfstate"
    region         = "eu-west-2"
  #  dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = "eu-west-2"
}
