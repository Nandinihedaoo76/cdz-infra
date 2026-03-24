resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    tags = {
        Name = var.project
    }

}

resource "aws_subnet" "private_db_subnet"{
    vpc_id = aws_vpc.main
    cidr_block = var.private_db_subnet_cidr
    map_public_ip_on_launch = false
    availability_zone = var.private_db_availability_zone
    tags = {
        name = var.project
    }

    depends_on = [aws_vpc.main]
  
}