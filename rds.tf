resource "aws_db_subnet_group" "default" {
  name       = "main-subnet-group"
  subnet_ids = [
    aws_subnet.private_subnet.id,
    aws_subnet.private_subnet_2.id
  ]

  tags = {
    Name = "Main DB subnet group"
  }
}


resource "aws_db_instance" "default" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  
  username             = "admin"
  password             = "admin1234"
  skip_final_snapshot  = true

  db_subnet_group_name = aws_db_subnet_group.default.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  publicly_accessible = false
  multi_az            = false

  tags = {
    Name = "My RDS DB"
  }
}
