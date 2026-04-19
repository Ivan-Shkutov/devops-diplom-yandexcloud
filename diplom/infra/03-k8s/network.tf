data "yandex_vpc_network" "main" {
  name = "main-network"
}

data "yandex_vpc_subnet" "a" {
  name = "subnet-a"
}

data "yandex_vpc_subnet" "b" {
  name = "subnet-b"
}

data "yandex_vpc_subnet" "c" {
  name = "subnet-c"
}