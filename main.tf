provider "aws" {
  region = "ap-southeast-1"
  access_key = "AKIA3JRELF3RIFCF6WFM"
  secret_key = "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"
}

resource "aws_s3_bucket" "first4-bucket" {
  
  bucket = "shubhamaher01234"
  acl = "public-read"

  versioning {
    enabled = true
  }

}
