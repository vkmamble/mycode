/* Terraform block */
terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

/* provider block */
provider "null" {
  # Configuration options
}

locals {  rgs = {
          "alpha" = "eastus"
          "bravo" = "southindia"
          "charlie" = "westus2"
       }}

resource "null_resource" "dummy_rgs" {
  for_each = tomap(local.rgs)
  triggers = {
               name= each.key
               region= each.value
}
}

