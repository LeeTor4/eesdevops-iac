variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "172.20.0.0/16"
}

variable "public_db_cidr" {
  default = "172.31.0.0/16"
}

variable "public_a_cidr" {
  default = "172.20.1.0/24"
}

variable "private_a_cidr" {
  default = "172.20.2.0/24"
}

variable "public_b_cidr" {
  default = "172.20.3.0/24"
}

variable "private_b_cidr" {
  default = "172.20.4.0/24"
}

variable "ami" {
  /* default = "ami-047a51fa27710816e" */
     default = "ami-06043d85c73cacd5d"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_pair" {
  default = "terraform-aws"
}