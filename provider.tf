terraform {
  backend "s3" {
    bucket = "statelockcgit"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"

}