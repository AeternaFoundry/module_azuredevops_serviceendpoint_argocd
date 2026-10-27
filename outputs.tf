output "serviceendpoint_argocds_id" {
  description = "Map of id values across all serviceendpoint_argocds, keyed the same as var.serviceendpoint_argocds"
  value       = { for k, v in azuredevops_serviceendpoint_argocd.serviceendpoint_argocds : k => v.id }
}
output "serviceendpoint_argocds_authentication_basic" {
  description = "Map of authentication_basic values across all serviceendpoint_argocds, keyed the same as var.serviceendpoint_argocds"
  value       = { for k, v in azuredevops_serviceendpoint_argocd.serviceendpoint_argocds : k => one(v.authentication_basic) }
  sensitive   = true
}
output "serviceendpoint_argocds_authentication_token" {
  description = "Map of authentication_token values across all serviceendpoint_argocds, keyed the same as var.serviceendpoint_argocds"
  value       = { for k, v in azuredevops_serviceendpoint_argocd.serviceendpoint_argocds : k => one(v.authentication_token) }
  sensitive   = true
}
output "serviceendpoint_argocds_authorization" {
  description = "Map of authorization values across all serviceendpoint_argocds, keyed the same as var.serviceendpoint_argocds"
  value       = { for k, v in azuredevops_serviceendpoint_argocd.serviceendpoint_argocds : k => v.authorization }
}
output "serviceendpoint_argocds_description" {
  description = "Map of description values across all serviceendpoint_argocds, keyed the same as var.serviceendpoint_argocds"
  value       = { for k, v in azuredevops_serviceendpoint_argocd.serviceendpoint_argocds : k => v.description }
}
output "serviceendpoint_argocds_project_id" {
  description = "Map of project_id values across all serviceendpoint_argocds, keyed the same as var.serviceendpoint_argocds"
  value       = { for k, v in azuredevops_serviceendpoint_argocd.serviceendpoint_argocds : k => v.project_id }
}
output "serviceendpoint_argocds_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_argocds, keyed the same as var.serviceendpoint_argocds"
  value       = { for k, v in azuredevops_serviceendpoint_argocd.serviceendpoint_argocds : k => v.service_endpoint_name }
}
output "serviceendpoint_argocds_url" {
  description = "Map of url values across all serviceendpoint_argocds, keyed the same as var.serviceendpoint_argocds"
  value       = { for k, v in azuredevops_serviceendpoint_argocd.serviceendpoint_argocds : k => v.url }
}

