resource "aws_db_instance" "student_rds" {
    allocated_storage    = 20
    storage_type         = "gp2"
    engine               = "mysql"
    engine_version       = "11.8.5"
    instance_class       = "db.t3.micro"
    db_name              = var.db_name
    username             = var.username
    password             = var.password
    vpc_security_group_ids = [aws_security_group.rds_sg.id]

    timeouts {
      create = "3h"
      delete = "3h"
      update = "3h"
    }
  
}

resource "aws_security_group" "rds_sg" {
    name        = "rds_sg"
    description = "Security group for RDS instance"
    vpc_id      = var.vpc_id

    ingress {
        from_port   = 3306
        to_port     = 3306
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_db_subnet_group" "rds_subnet_group" {
    name       = "rds_subnet_group"
    subnet_ids = [var.private_db_subnet_id]
    description = "Subnet group for RDS instance"
  
}