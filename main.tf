resource "aws_instance" "ubuntu" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name        = var.tag_value
    Environment = "prod"
  }
}

resource "aws_s3_bucket" "bucketname" {
  bucket = var.bucket_name
  acl    = "private"
  tags = {
    Name = var.bucket_name
  }
}