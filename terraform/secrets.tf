resource "aws_secretsmanager_secret" "mysql" {
  name                    = "project-bedrock/mysql"
  recovery_window_in_days = 0

  tags = {
    Name = "project-bedrock-mysql-secret"
  }
}

resource "aws_secretsmanager_secret_version" "mysql" {
  secret_id = aws_secretsmanager_secret.mysql.id
  secret_string = jsonencode({
    username = "admin"
    password = var.mysql_password
    host     = aws_db_instance.mysql.address
    port     = 3306
    dbname   = "catalogue"
  })
}

resource "aws_secretsmanager_secret" "postgresql" {
  name                    = "project-bedrock/postgresql"
  recovery_window_in_days = 0

  tags = {
    Name = "project-bedrock-postgresql-secret"
  }
}

resource "aws_secretsmanager_secret_version" "postgresql" {
  secret_id = aws_secretsmanager_secret.postgresql.id
  secret_string = jsonencode({
    username = "dbadmin"
    password = var.postgres_password
    host     = aws_db_instance.postgresql.address
    port     = 5432
    dbname   = "orders"
  })
}
