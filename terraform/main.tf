resource "aws_s3_bucket" "bucket"{
    bucket = var.bucket_name
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access_block"{
    bucket = aws_s3_bucket.bucket.id

    block_public_acls = true
    block_public_policy = true
    ignore_public_acls = true
    restrict_public_buckets = true
}

resource "aws_cloudfront_origin_access_control" "oac"{
    name = "s3-oac"
    description = "Origin access control policy"
    origin_access_control_origin_type = "s3"
    signing_behavior = "always"
    signing_protocol = "sigv4"
}