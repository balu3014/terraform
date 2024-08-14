#1. command line
#2. tfvars
#3. default values
#4. variable default value


#ec2-Variables

variable "instance_names" {
    type = list
    default = ["db", "backend", "frontend"]
}
variable "image_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
  description = "RHEL-9 AMI ID"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "common_tags" {
    default = {
        project = "expense"
        Environment = "Dev"
        terrafrom = true
    }
}

#sg-variables

variable "sg_name" {
     default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}


variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

#r53-variables

 variable "zone_id" {
   default = "Z0046586142IG4Z9PCAT0"
 }

variable "domain_name" {
  default = "baluthripraridevops.online"
}