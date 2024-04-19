provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = "public-read" 
  
  tags = {
    Name        = var.bucket_name
    Environment = var.environment
    Scope = "PCI"
    product_v2 = "dev"
    terraform_managed = "true"
  }
}

resource "aws_s3_bucket" "test" {
  bucket = "Test"
  acl    = "public-read" 
  
  tags = {
    Name        = "Test"
    Environment = var.environment
    Scope = "PCI"
    # product_v2 = "dev"
    # terraform_managed = "true"
  }
}

resource "aws_s3_bucket" "checkov" {
  bucket = "checkov-test"
  acl    = "public-read" 
  
  tags = {
    Name        = "checkov-test"
    Environment = var.environment
    Scope = "PCI"
    product_v2 = "dev"
    terraform_managed = "true"
  }
}

