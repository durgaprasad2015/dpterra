provider "aws" {
region = "ap-south-1"
access_key = "AKIAY7VHNKBGEUSRAFJ3"
secret_key = "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"
}

resource "aws_instance" "one" {
ami = "ami-074dc0a6f6c764218"
instance_type = "t2.micro"
tags = {
Name = "main"
}
}

resource "aws_s3_bucket" "two" {
bucket = "cokkerkrc08"
}

resource "aws_ebs_volume" "three" {
availability_zone = "ap-south-1a"
size = 3
tags = {
Name = "main_volume"
}
}