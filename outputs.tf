output "vm_public_ip" {

  value = azurerm_public_ip.pip.ip_address
}

output "recovery_vault" {

  value = azurerm_recovery_services_vault.vault.name
}

output "backup_policy" {

  value = azurerm_backup_policy_vm.policy.name
}
