variable "vpc_ip" {
}

variable "app_port" {
}

variable "ssh_port" {
}

variable "ftp_port" {
}

variable "available-ami" {
  type = list
  default = ["ami-09b42976632b27e9b","ami-01ab4a3bc7e75f44a","ami-0d783a243942fbe54"]
}

variable "instance_type" {
  type = list
  default = ["t2.micro", "t2.medium", "m5.large"]
}


variable "default" {
  type = map
  default =  {
    Project = "DevOps"
    Environment = "Test"
  }
}

variable "tags" {
  type = list
  default = ["dev", "test", "prod"]
}