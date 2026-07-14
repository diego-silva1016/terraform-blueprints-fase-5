resource "helm_release" "newrelic" {
  name             = var.release_name
  repository       = "https://helm-charts.newrelic.com"
  chart            = "nri-bundle"
  version          = var.chart_version
  namespace        = var.namespace
  create_namespace = var.create_namespace

  set_sensitive = [
    {
      name  = "global.licenseKey"
      value = var.license_key
    }
  ]

  set = [
    {
      name  = "global.cluster"
      value = var.cluster_name
    },
    {
      name  = "global.lowDataMode"
      value = tostring(var.low_data_mode)
    }
  ]

  values = [yamlencode(var.values)]
}
