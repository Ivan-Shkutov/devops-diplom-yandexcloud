resource "yandex_compute_instance" "master" {
  name        = "master"
  zone        = "ru-central1-a"
  platform_id = "standard-v3"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd84gfv9gc2h87jilum1"
      size     = 20
    }
  }

  network_interface {
    subnet_id          = data.yandex_vpc_subnet.a.id
    nat                = true
    security_group_ids = [yandex_vpc_security_group.k8s.id]
  }

  metadata = {
    ssh-keys = "ubuntu:${var.ssh_public_key}"
  }

  scheduling_policy {
    preemptible = true
  }
}


resource "yandex_compute_instance" "node1" {
  name        = "node1"
  zone        = "ru-central1-a"
  platform_id = "standard-v3"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd84gfv9gc2h87jilum1"
      size     = 20
    }
  }

  network_interface {
    subnet_id          = data.yandex_vpc_subnet.a.id
    nat                = true
    security_group_ids = [yandex_vpc_security_group.k8s.id]
  }

  metadata = {
    ssh-keys = "ubuntu:${var.ssh_public_key}"
  }

  scheduling_policy {
    preemptible = true
  }
}


resource "yandex_compute_instance" "node2" {
  name        = "node2"
  zone        = "ru-central1-b"
  platform_id = "standard-v3"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd84gfv9gc2h87jilum1"
      size     = 20
    }
  }

  network_interface {
    subnet_id          = data.yandex_vpc_subnet.b.id
    nat                = true
    security_group_ids = [yandex_vpc_security_group.k8s.id]
  }

  metadata = {
    ssh-keys = "ubuntu:${var.ssh_public_key}"
  }

  scheduling_policy {
    preemptible = true
  }
}


resource "yandex_compute_instance" "node3" {
  name        = "node3"
  zone        = "ru-central1-d"
  platform_id = "standard-v3"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd84gfv9gc2h87jilum1"
      size     = 20
    }
  }

  network_interface {
    subnet_id          = data.yandex_vpc_subnet.c.id
    nat                = true
    security_group_ids = [yandex_vpc_security_group.k8s.id]
  }

  metadata = {
    ssh-keys = "ubuntu:${var.ssh_public_key}"
  }

  scheduling_policy {
    preemptible = true
  }
}