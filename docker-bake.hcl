variable "BASE_VERSION" {
  default = "noble"
}

variable "REGISTRY" {
  default = "ghcr.io/eduardoteles17/containers"
}

function "tag" {
  params = [repo, tag]
  result = ["${REGISTRY}/${repo}:${tag}"]
}

target "base" {
  args = {
    BASE_VERSION = "${BASE_VERSION}"
  }
  labels = {
    "org.opencontainers.image.created" = timestamp()
    "org.opencontainers.image.description" = "Imagem empacotada por Eduardo Teles"
    "org.opencontainers.image.vendor"      = "Eduardo Teles"
  }
}

target "ubuntu" {
  inherits = ["base"]
  context = "./apps/ubuntu"
  tags = tag("ubuntu", "${BASE_VERSION}")
}
