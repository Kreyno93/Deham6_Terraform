provider "aws" {
  region = "eu-north-1"
}
/* resource "aws_s3_bucket" "dev" {
  bucket = "neufische-dev-bucket"
  tags = {
    Name        = "Deham6_Dev_Bucket_1337"
    Environment = "Dev"
  }
} */

resource "aws_instance" "deham6demos"{
    ami = "ami-0fa167c2af1ea0840"
    instance_type = "t3.micro"
    key_name = "vockey"
    vpc_security_group_ids = ["sg-07053caff48096429"]
    subnet_id = "subnet-07e16952d8589584f"
    tags = {
        Name = "deham6demos"
    }
}