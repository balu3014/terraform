resource "aws_db_instance" "mysql_db" {
  identifier            = "mysql"
  allocated_storage     = 20
  storage_type          = "gp2"
  engine                = "mysql"
  engine_version        = "8.0"
  instance_class        = "db.t2.micro"
  username              = "admin"
  password              = "admin"
  parameter_group_name  = "default.mysql8.0"
  
  tags = {
    Name = "DB"
  }
}
