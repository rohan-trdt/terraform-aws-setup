# ec2.tf
resource "aws_instance" "web_server" {
  ami           = "ami-0c42696027a8ede58" # Amazon Linux 2023 (Mumbai region)
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  key_name = aws_key_pair.deployer.key_name

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Deployed via Terraform</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "Terraform-Web-Server"
  }
}

# Create a key pair locally and use here
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("C:\\Users\\rohan\\.ssh\\id_rsa.pub")
}
