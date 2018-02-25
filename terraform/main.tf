resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow all http and https traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  
  tags {
    Name = "allow_http"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow all ssh traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "allow_ssh"
  }
}

resource "aws_instance" "machine-staging" {
  ami = "ami-0b73c576"
  instance_type = "t2.micro"
  key_name = "xebia"
  associate_public_ip_address = true
  security_groups = ["default", "allow_http", "allow_ssh"]
}

resource "aws_instance" "machine-production" {
  ami = "ami-0b73c576"
  instance_type = "t2.micro"
  key_name = "xebia"
  associate_public_ip_address = true
  security_groups = ["default", "allow_http", "allow_ssh"]
}
