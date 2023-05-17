output "alb_name" {
  description = "The ARN suffix of the ALB"
  value       = aws_lb.default.name
}

output "alb_arn" {
  description = "The ARN of the ALB"
  value       = aws_lb.default.arn
}

output "alb_arn_suffix" {
  description = "The ARN suffix of the ALB"
  value       = aws_lb.default.arn_suffix
}

output "alb_dns_name" {
  description = "DNS name of ALB"
  value       = aws_lb.default.dns_name
}

output "alb_zone_id" {
  description = "The ID of the zone which ALB is provisioned"
  value       = aws_lb.default.zone_id
}
