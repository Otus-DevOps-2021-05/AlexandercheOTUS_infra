terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.60.0"
    }
  }
}

provider "yandex" {
  # token     = ""
  service_account_key_file = "/home/avc/_github/keys/yandex_cloud/terraform_key.json"
  cloud_id  = "b1gbgfbmt50q42dhuuos"
  folder_id = "b1gm2c11e4d0u2vo5h90"
  zone      = "ru-central1-a"
}

resource "yandex_compute_instance" "app" {
  name = "reddit-app-terraform"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      # Указать id образа созданного в предыдущем домашем задании
      image_id = "fd82v5c5mu5a2mj12ki3"
    }
  }

  network_interface {
    # Указан id подсети default-ru-central1-a
    subnet_id = "e9be6poqo42ciuf6uun5"
    nat       = true
  }
}
