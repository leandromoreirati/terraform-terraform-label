variable "namespace" {
  type        = string
  default     = ""
  description = "Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'"
}

variable "environment" {
  type        = string
  default     = ""
  description = "Stage, e.g. 'prod', 'staging', 'dev'"
}

variable "name" {
  type        = string
  default     = ""
  description = "Solution name, e.g. `app` or `jenkins`"
}

variable "business_owner" {
  type        = string
  default     = ""
  description = "Resource business owner tag for billing purposes"
}

variable "application" {
  type        = string
  default     = ""
  description = "Application name, e.g. 'web' or 'jenkins'"
}

variable "service" {
  type        = string
  default     = ""
  description = "Service that application is part of, e.g. 'finance', 'legal'"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
}

variable "board" {
  type        = string
  default     = ""
  description = "Board to which the team belongs."
}
