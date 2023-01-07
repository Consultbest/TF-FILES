resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"
   # NAT Gateways - Outbound Communication
   # VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    "Name" = "test"
  }
} 

/*module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.78.0" 

  # VPC Basic Details
  name = "testing"
  cidr = "10.0.0.0/16"   
  azs                 = ["eu-west-3a", "eu-west-3b"]
  private_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets      = ["10.0.101.0/24", "10.0.102.0/24"]



  # NAT Gateways - Outbound Communication
  enable_nat_gateway = true
  single_nat_gateway = true

  # VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support = true

  public_subnet_tags = {
    Type = "public-subnets"
  }

  private_subnet_tags = {
    Type = "private-subnets"
  }


  tags = {
    Owner = "micheal"
    Environment = "dev"
  }

  vpc_tags = {
    Name = "testing"
  }
}*/
