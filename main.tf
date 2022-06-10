provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA56M4MQPXRQ5XRNRT"
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
