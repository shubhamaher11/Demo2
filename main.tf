provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA56M4MQPX2YYXF7PP"
  secret_key = "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"
}

resource "aws_s3_bucket" "first5" {
  
  bucket = "${var.name}"
  acl = "public-read"

  versioning {
    enabled = true
  }

}
variable "name"{
  description = "Bucket name"
  type = string
}
