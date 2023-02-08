terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Midas-Technologies-Cloud"
    workspaces {
      name = "my-application"
    }
  }
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.53.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.84.0"
    }
  }
} 