resource "mongodbatlas_auditing" "audit_PRD" {
  project_id                  = var.project_id
  audit_filter                = file("audit.json")
  audit_authorization_success = true
  enabled                     = true
}
