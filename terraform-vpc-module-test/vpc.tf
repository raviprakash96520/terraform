module "vpc" {
   # source = "../terraform-aws-vpc"
   source = "git::https://github.com/raviprakash96520/terraform.git//terraform-vpc-module?ref=main"
   # source = "git::https://github.com/DAWS-82S/terraform-aws-vpc.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    vpc_cidr = var.vpc_cidr
    common_tags = var.common_tags
    vpc_tags = var.vpc_tags
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_required = true
}

