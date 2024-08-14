resource "aws_route53_record" "expense" {
    count = length(var.instance_names)
  zone_id = var.zone_id
  name    = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}" # use terraform interpolation
  type    = "A"
  ttl     = 300
  records = [aws_instance.expense[count.index]] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]

#if records already exist
 allow_overwrite = true
}
