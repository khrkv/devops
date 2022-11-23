resource "yandex_vpc_network" "devops-net" {
  name = "devops-net"
}

resource "yandex_vpc_subnet" "devops-subnet-a" {
  v4_cidr_blocks = ["10.20.30.0/24"]
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.devops-net.id
}
