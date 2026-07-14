variable "release_name" {
  type    = string
  default = "argocd"
}

variable "namespace" {
  type    = string
  default = "argocd"
}

variable "chart_version" {
  type    = string
  default = "7.7.11"
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
