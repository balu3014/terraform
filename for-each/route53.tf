resource "aws_route53_record" "expense" {
   for_each = aws_instance.expense
  zone_id = var.zone_id
  name    = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}" # use terraform interpolation
  type    = "A"
  ttl     = 1
  #records = local.records
  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]

#if records already exist
 allow_overwrite = true
}
