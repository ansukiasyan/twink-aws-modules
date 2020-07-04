output "bucket_arn" {
  value       = aws_s3_bucket.html.arn
  description = "s3 bucket arn"
}

output "s3_object_key" {
  value       = aws_s3_bucket_object.html.key
  description = "s3 html object key"
}