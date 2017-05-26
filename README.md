AWS Elastic Beanstalk Route53 Hosted Zone IDs terraform module
===========

A Terraform module to lookup Route53 Hosted Zone IDs of Elastic Beanstalk based on Region


Module Input Variables
----------------------

- `region` - Name of the AWS regon


Usage
=====

```hcl
module "elasticbeanstalk_hosted_zone" {
  source = "github.com/door2door-io/d2d-terraform-eb-hosted-zones?ref=v0.0.1"
  region = "eu-central-1"
}
```


Outputs
=======

 - `id` - ID of the Route53 Hosted Zone of Elastic Beanstalk on the selected region
