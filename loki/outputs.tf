output "release_name" {
  value = helm_release.loki.name
}

output "namespace" {
  value = helm_release.loki.namespace
}

output "status" {
  value = helm_release.loki.status
}
