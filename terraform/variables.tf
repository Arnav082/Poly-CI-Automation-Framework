variable "aws_region" {
  default = "us-east-1"
}

variable "aws_zone" {
  default = "us-east-1a"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "pathtocmd" {
  default = "terraform/bootstrap.sh"
}

variable "amiID" {
  type = map(any)
  default = {
    us-east-1 = "ami-091138d0f0d41ff90"
    us-east-2 = "ami-0fe18bc3cfa53a248"
  }
}