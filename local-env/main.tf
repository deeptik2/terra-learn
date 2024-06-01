module "local-docker" {
  source                   = "../modules/local-docker"
  container_name           = var.local_container_name
  docker_image_name_tag    = "nginx:stable-alpine3.19-perl"
  docker_daemon_address    = var.local-docker-daemon
  container_internal_ports = 80
  container_external_ports = 8081
}
