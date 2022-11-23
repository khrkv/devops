resource "yandex_compute_instance" "k8s_master" {
  name = "master"
  zone = "ru-central1-a"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8jvcoeij6u9se84dt5"
      size     = "20"
      type     = "network-ssd"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.devops-subnet-a.id
    nat       = true
  }

  metadata = {
    user-data = "${file("~/projects/devops/terraform/meta.txt")}"
  }
}

resource "yandex_compute_instance" "k8s_app" {
  name = "app"
  zone = "ru-central1-a"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8jvcoeij6u9se84dt5"
      size     = "20"
      type     = "network-ssd"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.devops-subnet-a.id
    nat       = true
  }

  metadata = {
    user-data = "${file("~/projects/devops/terraform/meta.txt")}"
  }
}

resource "yandex_compute_instance" "srv" {
  name = "srv"
  zone = "ru-central1-a"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8jvcoeij6u9se84dt5"
      size     = "20"
      type     = "network-ssd"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.devops-subnet-a.id
    nat       = true
  }

  metadata = {
    user-data = "${file("~/projects/devops/terraform/meta.txt")}"
  }
}