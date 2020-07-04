locals {
  id             = lower(join(var.delimiter, compact(concat(list(var.application, var.namespace, var.environment), var.attributes))))
  application    = lower(format("%v", var.application))
  service        = lower(format("%v", var.service))
  environment    = lower(format("%v", var.environment))
  business_owner = lower(format("%v", var.business_owner))
  board          = lower(format("%v", var.board))
  domain_name    = var.environment == "production" ? lower(var.application) : lower("${var.application}.${var.environment}")
  namespace      = lower(format("%v", var.namespace))
  delimiter      = lower(format("%v", var.delimiter))
  attributes     = lower(format("%v", join(var.delimiter, compact(var.attributes))))

  tags = merge(
    {
      "Name"           = local.id
      "application"    = local.application
      "board"          = local.board
      "service"        = local.service
      "environment"    = local.environment
      "business_owner" = local.business_owner
      "terraform"      = "true"
    },
    var.tags
  )
}