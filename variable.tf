variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
  type        = string
  default     = "ami-01a00762f46d584a1"
}
variable "instance_type" {
  type    = string
  default = "t3.micro"
}
variable "key_name" {
  type    = string
  default = "Mum"
}
variable "tag_value" {
  type    = string
  default = "ubuntu"
}
variable "bucket_name" {
  type    = string
  default = "terrabucket20006"
}