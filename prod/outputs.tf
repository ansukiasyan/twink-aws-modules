output "public_ip" {
  value       = module.cross-account-infra.public_ip
  description = "Public IP of the web server"
}