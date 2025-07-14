# outputs.tf
output "web_server_public_ip" {
  value = aws_instance.web_server.public_ip
  description = "Public IP of the web server"
}
output "rds_endpoint" {
  value = aws_db_instance.default.endpoint
}
