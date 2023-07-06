provider "aws" {
  region = "us-west-2"
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
    instance_type = "t2.micro"
    key_name = "deham630062023"
    vpc_security_group_ids = ["sg-0668745a1e96b9e55"]
    subnet_id = "subnet-05527afe89ba4d0ee"
    tags = {
        Name = "deham6demos"
    }
}