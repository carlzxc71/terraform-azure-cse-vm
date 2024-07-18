variable "public_ip" {
  description = "The public IP address you will whitelist for the storage account access (Your PIP)"
  type        = string
}

variable "vm_password" {
  description = "The password for the VM"
  type        = string
  sensitive   = true
}
