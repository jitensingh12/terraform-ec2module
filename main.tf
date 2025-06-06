module "ec2-instance" {
  source = "./ec2/aws"
  #name               = "test instance"
  # iam adding this comment
  status             = var.status
  subnet             = var.subnet
  ami                = var.ami
  instance_type      = var.instance_type
  bootdisk           = var.bootdisk
  secondry_disk      = var.secondry_disk
  key_name           = var.key_name
  security_group_ids = var.security_group_ids
  tags = "${merge(var.tags, tomap({ appy = "AI" }))
  }"

  # insert the 4 required variables here

}