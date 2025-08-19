terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.129.0"
    }
  }
}

provider "yandex" {
  token     = "y0__xCgmuCbCBjB3RMgtsGqkRQw3tDmoAjEn7__UpyDR43Y0Ubl1MkAgH4T1Q"
  cloud_id  = "b1g56mt61mbfhr6buvr5"
  folder_id = "b1gh7csrpr2uf60cjus9"
  zone      = "ru-central1-a"
}