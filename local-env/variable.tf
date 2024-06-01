variable "local_container_name" {
  description = "value of the name for docker container"
  type        = string
  default     = "burritto"
}

variable "local-docker-daemon" {
  description = "run the command: docker context ls"
  type        = string
}

