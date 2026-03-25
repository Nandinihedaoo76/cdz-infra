
  environmenvironment = "prod"
  aws_region = "eu-north-1"

# RDS Variables
  rds_instance_class        = "db.t2.micro"
  rds_allocated_storage     = 10
  rds_username             = "admin"
  rds_password             = "ProdPassword123"  # Change this in production
  rds_db_name              = "studentdb"

# EKS Variables
  eks_project            = "infra"
  eks_desired_nodes      = 4
  eks_max_nodes          = 8
  eks_min_nodes          = 3
  eks_node_instance_type = "t3.xlarge"

# S3 Variables
  s3_bucket_name = "infra-prod-bucket"
  s3_environment = "prod" 

