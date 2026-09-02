resource "aws_instance" "jenkins" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = "t3.micro"

  key_name                    = "devops-jenkins-key"
  subnet_id                   = aws_subnet.public_1.id
  vpc_security_group_ids      = [aws_security_group.devops.id]
  associate_public_ip_address = true

  tags = {
    Name = "devops-jenkins-server"
  }
}
