variable "vpc_ip" {
}

variable "app_port" {
}

variable "ssh_port" {
}

variable "ftp_port" {
}

variable "available-ami" {
  type    = list(any)
  default = ["ami-09b42976632b27e9b", "ami-01ab4a3bc7e75f44a", "ami-0d783a243942fbe54"]
}

variable "instance_type" {
  type    = list(any)
  default = ["t2.micro", "t2.medium", "m5.large"]
}


variable "default" {
  type = map(any)
  default = {
    Project     = "DevOps"
    Environment = "Test"
  }
}

variable "tags" {
  type    = list(any)
  default = ["dev", "test", "prod"]
}