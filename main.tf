data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

# Regional Resources
module "regional" {
  source        = "./modules/regional"
  env           = var.env
  number_of_azs = var.number_of_azs
}

# Global Resources
module "global" {
  source = "./modules/global"
  env    = var.env
}
