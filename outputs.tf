output "elb_name" {
  description = "The ARN suffix of the elb"
  value       = aws_lb.default.name
}

output "elb_arn" {
  description = "The ARN of the elb"
  value       = aws_lb.default.arn
}

output "elb_arn_suffix" {
  description = "The ARN suffix of the elb"
  value       = aws_lb.default.arn_suffix
}

output "elb_dns_name" {
  description = "DNS name of elb"
  value       = aws_lb.default.dns_name
}

output "elb_zone_id" {
  description = "The ID of the zone which elb is provisioned"
  value       = aws_lb.default.zone_id
}
