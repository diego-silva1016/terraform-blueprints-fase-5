resource "helm_release" "loki" {
  name             = var.release_name
  repository       = "https://grafana.github.io/helm-charts"
  chart            = "loki"
  version          = var.chart_version
  namespace        = var.namespace
  create_namespace = var.create_namespace

  values = [yamlencode(var.values)]
}
