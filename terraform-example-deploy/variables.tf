variable "resource_group_name" {
  type = string
}

variable "container_group_name" {
  default = "zapConteinerGroup"
}


variable "container_name" {
  default = "zapPostgres"
}

variable "container_image" {
  default = "mcr.microsoft.com/azuredocs/aci-helloworld"
}
variable "container_cpu" {
  default = "2"
}
variable "container_memory" {
  default = "2"
}
variable "container_port" {
  default = "80"
}

variable "tags" {
  default = {
    zapTag = "zapValue"
  }
}