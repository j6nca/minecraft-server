module "mc-server"{
    source = "../../tf-modules/instances/minecraft-server"
    instance_type = "t3.medium"
    # Amazon Linux 2 AMI (HVM) - Kernel 5.10, SSD Volume Type
    ami = "ami-0c02fb55956c7d316"
    key_pair = "minecraft"
    hosted_zone_id = "Z0889591OHZG9Q5EXENE"
    vpc_id = data.aws_vpc.default_vpc.id
}