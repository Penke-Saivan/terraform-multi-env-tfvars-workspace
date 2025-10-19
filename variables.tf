variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

# variable "ec2_tags" {
#   type = map
#   default = {
#     Name      = "Terra-3"
#     Terraform = true
#   }

# }

variable "ec2_tags" {
  type = map(any)
  default = {
    Name        = "terraform-demo"
    Terraform   = "true"
    Project     = "joindevops"
    Environment = "dev"
  }
}

variable "instance_typo" {
  type    = string
  default = "t3.micro"
}

variable "sg_name" {
  type    = string
  default = "allow-all-tf"
  # optional to inform what is this variable about
  description = "Security Group Name to attach to EC2 instance"
}

variable "cidr" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
  default = 0
}

variable "ingress_to_port" {
  default = 0
}

variable "egress_from_port" {
  default = 0
}

variable "egress_to_port" {
  default = 0
}

variable "protocol" {
  type    = string
  default = "-1"
}

variable "environemnt" {
  default = "dev"
}
