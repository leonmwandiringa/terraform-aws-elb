# AWS elb Terraform module

elb configurations includes:

- gateway, application, network and classic load balancer creation
- access logs

## Basic Usage

```hcl
module "elb" {
  source = "git@github.com:leonmwandiringa/terraform-aws-elb?ref=v1.0"
  load_balancer_name = "alb"
  load_balancer_type = "application"
  subnet_ids = ["subnet1","subnet2"]
  security_group_ids = [ "sg-id" ]
  deletion_protection_enabled = false
  access_logs_enabled = true
  access_logs_s3_bucket_id = "s3-id"
  tags   = merge(
    var.global_tags,
    {
      "Name"    = "alb"
    }
  )
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0 |
| aws | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 4.0.0 |

## Modules

No Modules.


## Authors

Module authored and managed by [Leon_Mwandiringa](https://github.com/leonmwandiringa).

## License

Apache 2 Licensed. See LICENSE for full details.