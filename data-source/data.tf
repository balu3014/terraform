#Terraform can query the provider data using data-sources like AMI_ID


data "aws_ami" "ami_id" {

  most_recent = true
  owners = ["973714476881"]

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

#   filter {
#     name   = "Virtualization-type"
#     values = ["hvm"]
#   }
}