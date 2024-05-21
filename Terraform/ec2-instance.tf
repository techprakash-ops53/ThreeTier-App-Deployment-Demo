
resource "aws_instance" "instance_type" {

  ami = data.aws_ami.ami.id
  
  instance_type = var.instance_type
  
  key_name = aws_key_pair.key_pair.key_name
  
  subnet_id = aws_subnet.public-subnet.id
  
  vpc_security_group_ids = [aws_security_group.security-group.id]
  
  associate_public_ip_address = true
  
  iam_instance_profile = aws_iam_instance_profile.instance-profile.name
  
  root_block_device {
    volume_size = 30
  }
  
   user_data = templatefile("./tools-install.sh", {})
  
  tags = {
    Name = var.instance-name
  }
  
}

output "instance_ip"{
description = "Public IP of Server"
value = aws_instance.web.public_ip

}

