##############################################
# EC2 Instance for Backend (FastAPI)
##############################################

resource "aws_instance" "backend_server" {
  ami                    = "ami-08c40ec9ead489470" # Ubuntu 22.04 LTS (ca-central-1)
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.backend_sg.id]
  associate_public_ip_address = true

  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name

  user_data = file("${path.module}/userdata.sh")

  tags = {
    Name = "${var.project_name}-backend-ec2"
  }
}
