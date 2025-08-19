# Первая виртуальная машина (vm1)
resource "yandex_compute_instance" "vm1" {
  name        = "vm1"
  platform_id = "standard-v1"
  zone        = "ru-central1-a"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8g2ntguckjq2boqjmh"  
      size     = 10
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.my-subnet.id
    ip_address = "192.168.1.10"  
    nat       = true             
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"  
  }

   scheduling_policy {
    preemptible = true  
  }
}

# Вторая виртуальная машина (vm2)
resource "yandex_compute_instance" "vm2" {
  name        = "vm2"
  platform_id = "standard-v1"
  zone        = "ru-central1-a"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8g2ntguckjq2boqjmh" 
      size     = 10
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.my-subnet.id
    ip_address = "192.168.1.11" 
    nat       = false            
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"  
  }

  scheduling_policy {
    preemptible = true  
  }
}