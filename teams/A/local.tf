locals {
  instance_type = {
    default = "t2.micro",
    dev     = "t2.micro",
    prod    = "t3.micro"
  }
}
