resource "yandex_vpc_security_group" "allow-internal" {
  name        = "allow-internal"
  network_id  = yandex_vpc_network.my-network.id

  ingress {
    protocol       = "ANY"
    description    = "Разрешить весь внутренний трафик"
    v4_cidr_blocks = ["192.168.1.0/24"]
  }

  ingress {
    protocol       = "ICMP"
    description    = "Разрешить ping"
    v4_cidr_blocks = ["0.0.0.0/0"]
  }
}