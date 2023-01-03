terraform {
  backend "s3" {
    bucket         = "statelockcgit"
    dynamodb_table = "terraform-state-lock-dynamo"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"

}