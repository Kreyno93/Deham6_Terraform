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
    ami = "ami-01d0d89dc7786720b"
    instance_type = "t3.micro"
    key_name = "deham6-2906"
    vpc_security_group_ids = ["sg-07053caff48096429"]
    subnet_id = "subnet-07e16952d8589584f"
    tags = {
        Name = "deham6demos"
    }
}