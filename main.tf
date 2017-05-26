# http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region
variable "ELASTICBEANSTALK_HOSTED_ZONE_IDS" {
  type = "map"
  default = {
    ap-northeast-2 = "Z3JE5OI70TWKCP"
    ap-notheast-1  = "Z1R25G3KIG2GBW"
    ap-south-1     = "Z18NTBI3Y7N9TZ"
    ap-southeast-1 = "Z16FZ9L249IFLT"
    ap-southeast-2 = "Z2PCDNR3VC2G1N"
    ca-central-1   = "ZJFCZL7SSZB5I"
    eu-central-1   = "Z1FRNW7UH4DEZJ"
    eu-west-1      = "Z2NYPWQ7DFZAZH"
    eu-west-2      = "Z1GKAAAUGATPF1"
    sa-east-1      = "Z10X7K2B4QSOFV"
    us-east-1      = "Z117KPS5GTRQ2G"
    us-east-2      = "Z14LCN19Q5QHIC"
    us-west-1      = "Z1LQECGX5PH1X"
    us-west-2      = "Z38NKT9BP95V3O"
  }
}

variable "region" {}

output "id" {
  value = "${lookup(var.ELASTICBEANSTALK_HOSTED_ZONE_IDS, var.region)}"
}
