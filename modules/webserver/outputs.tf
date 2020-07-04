output "public_ip" {
  value       = aws_instance.amazon_linux.public_ip
  description = "Public IP of the web server"
}

output "lambda_role_arn" {
  value       = aws_iam_role.lambda_main.arn
  description = "lambda access role in the dev account"
}