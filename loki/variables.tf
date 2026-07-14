variable "release_name" {
  type    = string
  default = "loki"
}

variable "namespace" {
  type    = string
  default = "monitoring"
}

variable "chart_version" {
  type    = string
  default = "6.16.0"
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
