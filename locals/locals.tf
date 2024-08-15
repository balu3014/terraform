
# locals are like variables but Locals can hold expressions we can use where ever we want 


locals {
  

  ami_id = "ami-041e2ea9402c46c32"
  sg_id = "sg-02433cc121db80627"
  #instance_type = "t2.micro"
  instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
  tags ={
     Name = "locals"
    CreatedBy = "Balu Thripurari"
  }
}