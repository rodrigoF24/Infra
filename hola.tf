
provider "docker" {}

resource "docker_image" "nginx" {
    name = "nginx:latest"
}

resource "docker_container" "nginx" {
    name  = "nginx"
    image = docker_image.nginx.latest
    ports {
        internal = 80
        external = 8080
    }
}
provider "postgresql" {
    host     = "localhost"
    port     = 5432
    username = "postgres"
    password = "postgres"
    database = "postgres"
    sslmode  = "disable"
}