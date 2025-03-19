provider "aws" {
    region = "ap-southeast-2"
}

module "nginx" {
    source = "../../module/ec2"
    ami = "ami-03f052ebc3f436d52"
    instance_type = local.instance_type[terraform.workspace]

}

resource "aws_eip" "dmz" {
    domain = "vpc"
    instance = module.nginx.instance_id

}