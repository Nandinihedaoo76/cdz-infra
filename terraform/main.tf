provider "aws" {
    region = "eu-north-1"
}

module "rds" {
    source = "./modules/rds"
    db_name = "student_db"
    username = "nandu"
    password = "redhat"
    vpc_id = module.vpc.vpc_id
    private_db_subnet_id = module.vpc
    
}

module "vpc" {
    source = "./modules/vpc"
    private_db_subnet_cidr = "10.10.2.0/24"
    private_db_availability_zone = "eu-north-1a"
}