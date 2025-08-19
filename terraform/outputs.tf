output "vm1_public_ip" {
  value = yandex_compute_instance.vm1.network_interface.0.nat_ip_address
}

output "vm2_internal_ip" {
  value = yandex_compute_instance.vm2.network_interface.0.ip_address
}