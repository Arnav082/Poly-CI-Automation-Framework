resource "aws_instance" "web" {
  ami                    = var.amiID[var.aws_region]
  instance_type          = "t2.micro"
  key_name               = "project-key"
  vpc_security_group_ids = [aws_security_group.poly-ci-sg.id]
  availability_zone      = var.aws_zone
  user_data              = file("${path.module}/bootstrap.sh")

  tags = {
    Name    = "web-instance"
    Project = "poly-ci-automation"
  }
}

resource "aws_ec2_instance_state" "web_state" {
  instance_id = aws_instance.web.id
  state       = "running"
}


resource "aws_key_pair" "project_key" {
  key_name   = "project-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOioZ12x7OrRCwdFVe4wXz4J9S856ijVhx8nlw3rjDm8 arnav@Arnav"
}

