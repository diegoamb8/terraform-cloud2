resource "aws_instance" "ec2_pub1" {
  ami                         = "ami-0fff1b9a61dec8a5f"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnet_1.id
  key_name                    = "cloud2"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_ssh_http.id]
  user_data                   = file("command1.sh")

  tags = {
    Name = "pub1_ec2"
  }
}

resource "aws_instance" "ec2_pub2" {
  ami                         = "ami-0fff1b9a61dec8a5f"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnet_2.id
  key_name                    = "cloud2"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_ssh_http.id]
  user_data                   = file("command2.sh")

  tags = {
    Name = "pub2_ec2"
  }
}