variable "vpc-name" {
type = string
}
variable "igw-name" {
type = string
}
variable "rt-name" {
type = string
}
variable "subnet-name" {
type = string
}
variable "sg-name" {
type = string
}
variable "instance-name" {
type = string
}
variable "key_pair_name" {
type = string
default = "jenkins-key-pair"
}
variable "public_key" {
type = string
default = "ssh-rsa ...xyz@example"
}
variable "iam-role" {
type = string
}
variable "instance_type" {
 type = string
 default = "t2.micro"
 description = "EC2 Instance"
}

variable "private_subnet_cidrs" {
type = list(string)
description = "Private Subnet CIDR values"
default = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "azs" {
type = list(string)
description = "Availability Zones"
default = ["us-east-1a","us-east-1b", "us-east-1c" ]
}
