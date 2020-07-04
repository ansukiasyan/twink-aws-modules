output "public_ip" {
  value       = module.webserver.public_ip
  description = "Public IP of the web server"
}