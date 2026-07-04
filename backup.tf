resource "azurerm_recovery_services_vault" "vault" {

  name = "backup-vault"
  location = var.location
  resource_group_name = azurerm_resource_group.rg.name
  sku = "Standard"
  soft_delete_enabled = true
}

resource "azurerm_backup_policy_vm" "policy" {

  name = "daily-backup"
  resource_group_name = azurerm_resource_group.rg.name
  recovery_vault_name = azurerm_recovery_services_vault.vault.name
  timezone = "UTC"

  backup {
    frequency = "Daily"
    time = "02:00"
  }

  retention_daily {
    count = 30
  }
}

resource "azurerm_backup_protected_vm" "vmbackup" {

  resource_group_name = azurerm_resource_group.rg.name
  recovery_vault_name = azurerm_recovery_services_vault.vault.name
  source_vm_id = azurerm_windows_virtual_machine.vm.id
  backup_policy_id = azurerm_backup_policy_vm.policy.id
}
