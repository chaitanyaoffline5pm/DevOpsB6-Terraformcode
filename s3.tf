resource "aws_s3_bucket" "Statelock" {
  bucket = "statelockcgit"

  tags = {
    Name = "devOpsb6cgitstatelockbucket"
  }
}