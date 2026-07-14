variable "release_name" {
  type    = string
  default = "newrelic"
}

variable "namespace" {
  type    = string
  default = "newrelic"
}

variable "chart_version" {
  type    = string
  default = "5.0.63"
}

variable "create_namespace" {
  type    = bool
  default = true
}

variable "license_key" {
  type      = string
  sensitive = true
}

variable "cluster_name" {
  type = string
}

variable "low_data_mode" {
  type    = bool
  default = true
}

variable "values" {
  type    = map(any)
  default = {}
}

variable "tags" {
  type    = map(string)
  default = {}
}
