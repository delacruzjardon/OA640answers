resource "mongodbatlas_project_ip_access_list" "instruqt" {
  project_id = var.project_id
  ip_address = var.ip_address
}
