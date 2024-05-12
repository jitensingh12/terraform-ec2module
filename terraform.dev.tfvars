status             = true
ami                = "ami-04ff98ccbfa41c9ad"
key_name           = "App-Server-Key"
subnet             = "subnet-73340e2e"
security_group_ids = [ "sg-1d658b68" ]
bootdisk           = 10
secondry_disk      = 10
instance_type      = "t2.micro"

## tags section

tags = {
    env = "prod"
    type = "support"
}