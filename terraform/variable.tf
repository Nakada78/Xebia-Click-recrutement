variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "eu-west-3"
}
variable "aws_instance" {
  type = "list"
  default = ["machine-staging", "machine-production"]
}
