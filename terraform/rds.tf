resource "aws_db_subnet_group" "main" {
  name       = "project-bedrock-db-subnet-group"
  subnet_ids = aws_subnet.private[*].id

  tags = {
    Name = "project-bedrock-db-subnet-group"
  }
}

resource "aws_db_instance" "mysql" {
  identifier             = "project-bedrock-mysql"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_name                = "catalogue"
  username               = "admin"
  password               = var.mysql_password
  db_subnet_group_name   = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.rds.id]
  skip_final_snapshot    = true
  publicly_accessible    = false

  tags = {
    Name = "project-bedrock-mysql"
  }
}

resource "aws_db_instance" "postgresql" {
  identifier             = "project-bedrock-postgresql"
  engine                 = "postgres"
  engine_version         = "15"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_name                = "orders"
  username               = "dbadmin"
  password               = var.postgres_password
  db_subnet_group_name   = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.rds.id]
  skip_final_snapshot    = true
  publicly_accessible    = false

  tags = {
    Name = "project-bedrock-postgresql"
  }
}
