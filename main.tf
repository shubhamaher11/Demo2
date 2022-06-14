provider "aws" {
  region = "ap-south-1"
  access_key = ""
  secret_key = ""
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
