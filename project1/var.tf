variable "region" {
  type    = string
  default = "eu-west-2"

}
variable "vpc_cidr" {
  type    = string
  default = "192.168.0.0/16"

}
variable "sub_cidr" {
  type    = string
  default = "192.168.0.0/24"

}
variable "ami" {
  type    = string
  default = "ami-053a617c6207ecc7b"

}