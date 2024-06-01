variable "container_name" {
  description = "value of the name for docker container"
  type = string
  default = "CoolSummerContainer"
}

variable "docker_image_name_tag" {
  default = ""
  type = string
}

variable "docker_daemon_address" {
  description = " Local Docker daemon address"
  type = string
}

variable "container_internal_ports" {
  type = number
}
variable "container_external_ports" {
  type = number
}
