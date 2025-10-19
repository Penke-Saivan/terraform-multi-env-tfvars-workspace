resource "aws_instance" "terraforma" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all_tf.id]

  tags = merge(local.common_tags, {
    Name= "${local.common_name}-tfvars-multi-env"
  })
}

resource "aws_security_group" "allow_all_tf" {
  name   = "${local.common_name}-tfvars-multi-env"


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
    Name= "${local.common_name}-tfvars-multi-env"
  })

}
