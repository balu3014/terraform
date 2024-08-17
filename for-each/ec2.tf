# resource <resource-type> <resource-name>
resource "aws_instance" "expense" {
    for_each = var.instance_names # each.key and each.value

  ami                    = data.aws_ami.ami_info.id
  vpc_security_group_ids = ["sg-02433cc121db80627"]
  instance_type         = each.value

  tags = merge(
    var.common_tags,
    {
      Name   = "each.key"
      Module = "each.key"
    }
  )
}