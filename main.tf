resource "aws_instance" "ubuntu" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name        = var.tag_value
    Environment = "prod"
  }
}

