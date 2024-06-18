variable "image_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
  description = "RHEL-9 AMI ID"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
     default = "db"
    }
