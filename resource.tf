resource "aws_s3_bucket" "terraform_bucket" {
  bucket        = var.bucket_name
  force_destroy = true
}


resource "aws_s3_bucket_versioning" "versioning_demo" {
  bucket = aws_s3_bucket.terraform_bucket.bucket
  versioning_configuration {
    status = var.bucket_version
  }
}

resource "aws_s3_bucket_ownership_controls" "terraform_bucket_oc" {
  bucket = aws_s3_bucket.terraform_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "terraform_bucket_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.terraform_bucket_oc]
  bucket     = aws_s3_bucket.terraform_bucket.id
  acl        = var.bucket_acl
}

