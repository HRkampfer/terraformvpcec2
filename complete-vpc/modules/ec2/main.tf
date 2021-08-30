module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
 

  name = "single-instance"

  ami                    = "ami-083ac7c7ecf9bb9b0"
  associate_public_ip_address = true
  instance_type          = "t2.micro"
 //key_name               = "user1"
  monitoring             = true
 // vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = var.vpc.public_subnets[0]

  tags = {
    "Name" = "EC2"
  }
}
