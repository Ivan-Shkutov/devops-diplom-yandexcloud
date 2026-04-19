resource "yandex_resourcemanager_folder_iam_member" "roles" {
  for_each = toset([
    "storage.admin",
    "vpc.admin",
    "compute.admin",
    "k8s.admin",
    "k8s.clusters.agent"
  ])

  folder_id = var.folder_id
  role       = each.value
  member     = "serviceAccount:${yandex_iam_service_account.terraform_sa.id}"
}