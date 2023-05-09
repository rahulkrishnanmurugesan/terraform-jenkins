terraform {
  backend "s3" {
    bucket         = "sat-23-feb"
    key            = "dev/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terralock"

  }
}