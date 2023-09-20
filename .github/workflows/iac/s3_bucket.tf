provider "aws" {
  region = "us-west-1" # Change as per requirement
}

resource "aws_s3_bucket" "bucket" {
  bucket = "%%APPNAME%%-bucket"
}

resource "aws_kms_key" "key" {
  description = "KMS key for %%APPNAME%%"
  is_enabled = true
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = "*", # Update as needed
        Action = ["s3:GetObject"],
        Resource = [aws_s3_bucket.bucket.arn]
      }
    ]
  })
}
