resource "aws_instance" "web" {

    count = var.status ? 1 : 0
    ami = var.ami
    key_name = var.key_name
    instance_type = var.instance_type
    subnet_id = var.subnet

    root_block_device {
        volume_size = var.bootdisk
        volume_type = "gp3"
    }
    ebs_block_device {
        volume_size = var.secondry_disk
        volume_type = "gp3"
        delete_on_termination = true
        device_name = "/dev/sdb"
    }

    #tags = {
    #  created_by = "terraform"
    #  time = timestamp()
    #}
    tags = "${merge(var.tags,
      tomap({
          kk = "jit"
      })
    )
  }"
}