# S3 Static Website with CloudFront

This Terraform configuration deploys a static website hosted in an S3 bucket and served through CloudFront.

## Structure

- `aws_s3_bucket`: Creates the S3 bucket used to store website files.
- `aws_s3_bucket_public_access_block`: Blocks all public access to the bucket.
- `aws_cloudfront_origin_access_control`: Creates an Origin Access Control (OAC) to allow CloudFront to securely access S3.
- `aws_cloudfront_distribution`: Creates the CloudFront distribution that serves the website over HTTPS.
- `aws_s3_bucket_policy`: Allows only the configured CloudFront distribution to access the bucket.
- `aws_s3_object`: Uploads all files from the `website/` directory to the S3 bucket.

## Website files

The `website/` directory contains the static website files (HTML, CSS, etc.). All files are automatically uploaded to S3 using Terraform.
