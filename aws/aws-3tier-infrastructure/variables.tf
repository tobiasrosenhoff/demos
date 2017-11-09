variable "region" {
  default = "us-west-1"
}

variable "vpc_cidr" {
  default = "10.128.0.0/16"
}

variable "subnet_cidr_blocks" {
  default = {
    public_zone0 = "10.128.1.0/24"
    public_zone1 = "10.128.2.0/24"
    public_zone2 = "10.128.3.0/24"

    private_zone0 = "10.128.5.0/24"
    private_zone1 = "10.128.6.0/24"
    private_zone2 = "10.128.7.0/24"

  }
}

variable "environment" {
  default = "dev"
}

variable "project" {
  default = "demo"
}
