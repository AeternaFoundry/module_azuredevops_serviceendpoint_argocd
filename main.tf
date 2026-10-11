resource "azuredevops_serviceendpoint_argocd" "serviceendpoint_argocds" {
  for_each = var.serviceendpoint_argocds

  project_id            = each.value.project_id
  service_endpoint_name = each.value.service_endpoint_name
  url                   = each.value.url
  description           = each.value.description

  dynamic "authentication_basic" {
    for_each = each.value.authentication_basic != null ? [each.value.authentication_basic] : []
    content {
      password = authentication_basic.value.password
      username = authentication_basic.value.username
    }
  }

  dynamic "authentication_token" {
    for_each = each.value.authentication_token != null ? [each.value.authentication_token] : []
    content {
      token = authentication_token.value.token
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

