terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    region = us-west-1
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 1.0"
    }
    http = {
      source  = "hashicorp/http"
      version = ">= 1.0"
    }
  }
}
