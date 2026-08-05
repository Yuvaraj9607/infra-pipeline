terraform {
  backend "s3" {
    bucket  = "terrabucket20006"
    key     = "terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}