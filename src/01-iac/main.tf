locals {
  prefix_lower = lower("${var.prefix}")
  project_lower = lower("${var.project}")
  environment_lower = lower("${var.environment}")
  }

data "azurerm_client_config" "config" {}
provider "azurerm" {
version = "=2.91.0"
features {}
}