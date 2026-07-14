output "release_name" {
  value = helm_release.prometheus.name
}

output "namespace" {
  value = helm_release.prometheus.namespace
}

output "status" {
  value = helm_release.prometheus.status
}
