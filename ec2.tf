provider "aws" {
        region = "eu-north-1"
}

resource "aws_instance" "infra" {
        ami = "ami-080254318c2d8932f"
        instance_type = "t3.micro"
        key_name = "dev123"
        tags = {
                Name = "infra"
                env = "dev"
        }
        vpc_security_group_ids = ["sg-0301c5e1980e14581"]
  
}