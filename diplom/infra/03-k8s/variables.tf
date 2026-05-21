variable "cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
}

variable "folder_id" {
  description = "Yandex Folder ID"
  type        = string
}

variable "token" {
  description = "Yandex Cloud IAM token"
  type        = string
  sensitive   = true
}

variable "ssh_public_key" {
  description = "Public SSH key for VM access"
  type        = string
}