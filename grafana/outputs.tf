output "release_name" {
  value = helm_release.grafana.name
}

output "namespace" {
  value = helm_release.grafana.namespace
}

output "status" {
  value = helm_release.grafana.status
}

output "admin_password" {
  value     = local.admin_password
  sensitive = true
}
