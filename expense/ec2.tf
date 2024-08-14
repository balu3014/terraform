# resource <resource-type> <resource-name>
resource "aws_instance" "expense" {
  count = length(var.instance_names)

  ami                    = "ami-0b4f3791835706b9"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  instance_type         = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"

  tags = merge(
    var.common_tags,
    {
      Name   = var.instance_names[count.index]
      Module = var.instance_names[count.index]  # Corrected "Moduel" to "Module" and "instannce_names" to "instance_names"
    }
  )
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allowing SSH access"

  #terraform block
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0 # from 0 to 0 means, opening all protocols
    to_port     = 0
    protocol    = "-1" # -1 all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = "allow_ssh"
    CreatedBy = "Balu Thripurari"
  }
}

resource "aws_ebs_volume" "db_volume" {
  availability_zone = "us-east-1a"  
  size              = 20            
  
}


# resource "aws_ebs_snapshot" "db_snapshot" {
#   volume_id = aws_ebs_volume.db_volume.id
#   tags = {
#     Name        = "ExampleSnapshot"
#     Environment = "Production"
#   }
# }
