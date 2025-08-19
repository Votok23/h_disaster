resource "yandex_vpc_network" "my-network" {
  name = "my-network"
}

resource "yandex_vpc_subnet" "my-subnet" {
  name           = "my-subnet"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.my-network.id
  v4_cidr_blocks = ["192.168.1.0/24"]
}