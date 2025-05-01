
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
  default = ["master", "nod1", "nod2"]
}

variable "ws_ports" {
  type        = list(number)
  description = "Inbound rules for Web Servers"
  default     = null
}

variable "mg_ports" {
  type        = list(number)
  description = "Inbound rules for Management"
  default     = null
}
