resource "aws_key_pair" "key_pair"{
key_name = var.key_pair_name
public_key = file("~/.ssh/id_rsa.pub")
#public_key = var.public_key
}
