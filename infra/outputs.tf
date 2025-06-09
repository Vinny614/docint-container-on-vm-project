output "acr_login_server" {
  description = "The login server of the Azure Container Registry"
  value       = azurerm_container_registry.acr.login_server
}

output "vm_public_ip" {
  description = "The public IP address of the virtual machine"
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
}

output "vm_nic_public_ip" {
  description = "The public IP address of the virtual machine"
  value       = azurerm_public_ip.vm_public_ip.ip_address
}

output "app_service_default_hostname" {
  description = "The default hostname of the Linux Web App"
  value       = azurerm_linux_web_app.app.default_hostname
}

output "docint_endpoint" {
  value = azurerm_cognitive_account.docint.endpoint
}

output "docint_api_key" {
  value  = azurerm_cognitive_account.docint.primary_access_key
  sensitive = true
}

output "vm_identity" {
  value = azurerm_linux_virtual_machine.vm.identity
}