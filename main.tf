# ARM provider block -rekhu
provider "azurerm" {
  version = "~>2.0"
  features {}
}
# Terraform backend configuration block -precreated
terraform { 
  backend "azurerm" {
    resource_group_name  = "testterraform-rg"
    storage_account_name = "tftestterraformstorage"
    container_name       = "mytfstate"
    key                  = "testterraform.mytfstate"
  }
}