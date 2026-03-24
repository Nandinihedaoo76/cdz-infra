variable "private_db_subnet_cidr"{}

variable "private_db_availability_zone" {}

variable "project" {
    default = "cbz"
}

output "private_db_subnet" {
  value = aws_subnet.private_db_subnet.id
}