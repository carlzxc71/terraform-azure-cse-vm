output "az_vm_pip" {
  description = "value of the public IP address"
  value       = azurerm_public_ip.this.ip_address
}
