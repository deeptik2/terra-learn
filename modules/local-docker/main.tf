terraform {
	required_providers {
		docker = {
			source  = "kreuzwerker/docker"
			version = "~> 3.0.1"
		}
	}
}

provider "docker" {
	host = var.docker_daemon_address
}

resource "docker_image" "nginx" {
	name         = var.docker_image_name_tag
	keep_locally = false
}

resource "docker_container" "nginx" {
	image = docker_image.nginx.image_id
	name  = var.container_name

	ports {
		internal = var.container_internal_ports
		external = var.container_external_ports
	}
}

output "container_id" {
	description = "ID of the docker container"
	value = docker_container.nginx.id
}

output "image_id" {
	description = "ID of the docker image"
	value = docker_image.nginx.id
}
