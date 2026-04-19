output "master_ip" {
  value = yandex_compute_instance.master.network_interface[0].nat_ip_address
}

output "worker_ips" {
  value = [
    yandex_compute_instance.node1.network_interface[0].nat_ip_address,
    yandex_compute_instance.node2.network_interface[0].nat_ip_address,
    yandex_compute_instance.node3.network_interface[0].nat_ip_address
  ]
}
