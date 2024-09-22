resource "aws_instance" "terraform" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = lookup(var.instance_type, terraform.workspace)     #terraform.workspace means which shows which workspace you are in
  vpc_security_group_ids = ["sg-026ccdb1c65b84e63"] # it's id of allow-all secutiry group
  tags = {
    Name = "terraform-${terraform.workspace}"
  }
}