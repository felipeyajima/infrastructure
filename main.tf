provider "aws" {
  region = var.region
  access_key = var.key
  secret_key = var.secret
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "secondary" {
  cidr_block = "192.168.0.0/24"
}
