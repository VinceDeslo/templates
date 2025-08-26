terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  cloud {
    organization = "infra-spikes"
    workspaces {
      name = "new-workspace"
    }
  }
}

provider "aws" {
  region = var.region
}
