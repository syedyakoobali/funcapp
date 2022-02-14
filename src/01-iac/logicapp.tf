resource "azurerm_storage_account" "lastd01strg" {
  name                      = "salogicappsampledevc"
  resource_group_name       = azurerm_resource_group.RG.name
  location                  = azurerm_resource_group.RG.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  min_tls_version           = "TLS1_2"
  enable_https_traffic_only = true

  queue_properties {
    logging {
      delete                = true
      read                  = true
      write                 = true
      version               = "1.0"
      retention_policy_days = 10
    }

    hour_metrics {
      enabled               = true
      include_apis          = true
      version               = "1.0"
      retention_policy_days = 10
    }
    minute_metrics {
      enabled               = true
      include_apis          = true
      version               = "1.0"
      retention_policy_days = 10
    }
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_app_service_plan" "lastdasp" {
  name                = "asplogicappsampledevc"
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name

  kind     = "Linux"
  reserved = true

  sku {
    tier = "WorkflowStandard"
    size = "WS1"
  }

  lifecycle {
    ignore_changes = all
  }
}


resource "azurerm_logic_app_standard" "lastd01" {
  name                       = "la-wus-logicappsample-devc"
  location                   = azurerm_resource_group.RG.location
  resource_group_name        = azurerm_resource_group.RG.name
  app_service_plan_id        = azurerm_app_service_plan.lastdasp.id
  storage_account_name       = azurerm_storage_account.lastd01strg.name
  storage_account_access_key = azurerm_storage_account.lastd01strg.primary_access_key
  
  site_config {
    linux_fx_version = "DOCKER|mcr.microsoft.com/azure-functions/dotnet:3.0-appservice"
  }

}
