# resource <resource-type> <resource-name>
resource "aws_instance" "db" {

  ami                    = "ami-041e2ea9402c46c32"
  vpc_security_group_ids = ["sg-02433cc121db80627"]
  instance_type          = "t2.micro"

  tags = {
    Name = "db"
  }
}
  