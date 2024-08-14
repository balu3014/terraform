resource "aws_instance" "db" {

  ami                    = "ami-0b4f379183e5706b9"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  instance_type          = "t3.micro"

  tags = {
    Name = "db"
  }
}