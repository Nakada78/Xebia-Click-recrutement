resource "aws_instance" "machine-staging" {
  ami = "ami-8ee056f3"
  instance_type = "t2.micro"
}

resource "aws_instance" "machine-production" {
  ami = "ami-8ee056f3"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip-public" {
  instance = "${var.aws_instance}"
}
