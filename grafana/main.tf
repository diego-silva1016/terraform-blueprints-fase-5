resource "random_password" "admin_password" {
  count = var.admin_password == null ? 1 : 0

  length  = 16
  special = true
}

locals {
  admin_password = coalesce(var.admin_password, try(random_password.admin_password[0].result, null))
  merged_values = merge(
    {
      adminPassword = local.admin_password
    },
    var.values
  )
}

resource "helm_release" "grafana" {
  name             = var.release_name
  repository       = "https://grafana.github.io/helm-charts"
  chart            = "grafana"
  version          = var.chart_version
  namespace        = var.namespace
  create_namespace = var.create_namespace

  values = [yamlencode(local.merged_values)]
}
