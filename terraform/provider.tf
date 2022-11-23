terraform {
  required_version = ">= 1.3.5"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.82.0"
    }
  }
}

provider "yandex" {
  token     = var.YC_TOKEN
  cloud_id  = var.YC_CLOUD
  folder_id = var.YC_FOLDER
  zone      = "ru-central1-a"
}

