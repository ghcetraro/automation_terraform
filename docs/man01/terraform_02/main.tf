variable "region" {
  default = "eu-west-3"
}variable "shared_credentials_file" {
  default = "/home/eon01/.aws/credentials"
}

variable "profile" {
  default = "terraform"
}

provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.profile}"
}resource "aws_instance" "web" {
  ami = "ami-0e55e373"
  instance_type = "t1.micro"
  tags {
    Name = "eralabs"
  }}