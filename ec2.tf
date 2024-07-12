
resource "aws_key_pair" "key" {
  key_name   = "aws_key"
  public_key = file("./aws-key.pub")
}

resource "aws_instance" "vm-mg" {
  ami                         = var.instance-ami
  instance_type               = var.instance-type 
  subnet_id                   = aws_subnet.subnet.id
  key_name                    = aws_key_pair.key.key_name
  vpc_security_group_ids      = [aws_security_group.security-group.id]
  associate_public_ip_address = true

  tags = {
    Name = "vm-terraform-mg"
  }
}