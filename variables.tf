
variable "instance_type" {
  type    = list(any)
  default = ["t2.micro", "t2.medium", "m5.large"]
}


variable "default" {
  type = map(any)
  default = {
    Project = "DevOps"
  }
}

variable "environment" {
  type    = list(any)
  default = ["dev", "test", "prod"]
}

variable "ws_ports" {
  type        = list(number)
  description = "Inbound rules for Web Servers"
  default     = null
}