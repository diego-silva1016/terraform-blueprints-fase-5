variable "release_name" {
  type    = string
  default = "prometheus"
}

variable "namespace" {
  type    = string
  default = "monitoring"
}

variable "chart_version" {
  type    = string
  default = "25.27.0"
}

variable "create_namespace" {
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
