resource "aws_instance" "terraforma" {
  ami           = var.ami_id
  instance_type = lookup(var.instance_type, terraform.workspace)
  vpc_security_group_ids = [aws_security_group.allow_all_tf.id]

  tags = merge(local.common_tags, {
    Name= "${local.common_name}-workspace"
  })
}

resource "aws_security_group" "allow_all_tf" {
  name   = "${local.common_name}-workspace"


  egress {
    from_port   = 0 #opening all ports
    to_port     = 0
    protocol    = "-1" #all protocols
    cidr_blocks = ["0.0.0.0/0"] #internet

  }

  ingress {
    from_port   = 0 #opening all ports
    to_port     = 0
    protocol    = "-1" #all protocols
    cidr_blocks = ["0.0.0.0/0"] #internet

  }

  tags = merge(local.common_tags, {
    Name= "${local.common_name}-workspace"
  })

}
