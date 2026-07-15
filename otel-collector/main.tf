locals {
  default_values = {
    mode = var.mode
    image = {
      repository = "otel/opentelemetry-collector-contrib"
    }
    config = {
      receivers = {
        otlp = {
          protocols = {
            grpc = {}
            http = {}
          }
        }
      }
      exporters = {
        logging = {
          loglevel = "info"
        }
      }
      service = {
        pipelines = {
          traces = {
            receivers = ["otlp"]
            exporters = ["logging"]
          }
          metrics = {
            receivers = ["otlp"]
            exporters = ["logging"]
          }
          logs = {
            receivers = ["otlp"]
            exporters = ["logging"]
          }
        }
      }
    }
  }

  merged_values = try(
    merge(local.default_values, var.values),
    local.default_values
  )
}

resource "helm_release" "otel_collector" {
  name             = var.release_name
  repository       = "https://open-telemetry.github.io/opentelemetry-helm-charts"
  chart            = "opentelemetry-collector"
  version          = var.chart_version
  namespace        = var.namespace
  create_namespace = var.create_namespace

  values = [yamlencode(local.merged_values)]
}
