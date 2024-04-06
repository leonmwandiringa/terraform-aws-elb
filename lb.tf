resource "aws_lb" "default" {
  name               = var.load_balancer_name
  tags               = merge(var.tags, {
    Name = "${var.tags.Name}-lb"
  })
  internal           = var.is_internal
  load_balancer_type = var.load_balancer_type

  security_groups = var.security_group_ids

  subnets                         = var.subnet_ids
  enable_cross_zone_load_balancing = var.cross_zone_load_balancing_enabled
  enable_http2                     = var.http2_enabled
  idle_timeout                     = var.idle_timeout
  ip_address_type                  = var.ip_address_type
  enable_deletion_protection       = var.deletion_protection_enabled
  drop_invalid_header_fields       = var.drop_invalid_header_fields
  preserve_host_header             = var.preserve_host_header

  access_logs {
    bucket  = var.access_logs_s3_bucket_id
    prefix  = var.access_logs_prefix
    enabled = var.access_logs_enabled
  }

  dynamic "subnet_mapping" {
    for_each = var.subnet_mapping
    content {
      subnet_id = subnet_mapping.value["subnet_id"]
      allocation_id = subnet_mapping.value["allocation_id"]
      private_ipv4_address = subnet_mapping.value["private_ipv4_address"]
      ipv6_address = subnet_mapping.value["ipv6_address"]
    }
  }
}