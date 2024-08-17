variable "instance_names" {
  type = map(string)
  default = {
    db = "t3.micro"
    backend = "t2.micro"
    frontend = "t2.micro"
  }
}
   variable "common_tags"{
    type = map
    default = {
        project = "expense"
        terraform = "true"
    }
   }


  
#r53-variables

 variable "zone_id" {
   default = "Z0046586142IG4Z9PCAT0"
 }

variable "domain_name" {
  default = "baluthripraridevops.online"
}