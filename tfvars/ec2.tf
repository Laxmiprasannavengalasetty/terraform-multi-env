# requirements instance_names : mysql-dev , backend-dev , frontend-dev r53: mysql-dev.lpdevops.online , backend-dev.lpdevops.online, frontend-dev.lpdevops.online
# same as prod also
resource "aws_instance" "expense" {
  for_each               = var.instances # map
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = each.value
  vpc_security_group_ids = [aws_security_group.allow-ssh-terraform.id]
  tags = merge(
    var.common_tags,
    var.tags,
    {
      Name = each.key
    }
  )
}
resource "aws_security_group" "allow-ssh-terraform" {
  name        = "allow-ssh-${var.environment}"
  description = " allow port no. 22 for ssh access"


  #outgoing traffic usally we allow everything in egress not require any permission to go out
  egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      }
  ingress {
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]   # allow from everyone
      ipv6_cidr_blocks = ["::/0"]
    }
  tags = merge(
    var.common_tags,
    var.tags,
    {
      Name = "allow-ssh-${var.environment}"
    }
  )

}


