output "release_name" {
  value = helm_release.otel_collector.name
}

output "namespace" {
  value = helm_release.otel_collector.namespace
}

output "status" {
  value = helm_release.otel_collector.status
}
