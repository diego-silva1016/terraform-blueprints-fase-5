output "release_name" {
  value = helm_release.newrelic.name
}

output "namespace" {
  value = helm_release.newrelic.namespace
}

output "status" {
  value = helm_release.newrelic.status
}
