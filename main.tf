terraform {
  required_providers {
    docker = {
      source = "terraform-providers/docker"
    }
  }
}

provider "docker" {}

resource "docker_container" "mirrors" {
  image = "mirrors:dev"
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
}
