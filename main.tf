# main.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.88.0"
    }
  }

  # backend "s3" {
  #   encrypt = "true"
  # }

  required_version = ">= 1.9.0"
}

provider "aws" {

  default_tags {
    tags = {
      region      = "eu"
      solution    = "1nce-connect"
      environment = "dev"
      component   = "meta-proxy-component"
      owner       = "meta-proxy.pipeline"
    }
  }
}

locals {
  gtp = var.gtp-main-components-single
}

module "tf-proxy" {
  source   = "git::https://gitlab.com/1nce-tech/platform/research/bong-meta-proxy-pipeline/main-components.git?ref=${local.gtp}"

  vpc_cidr_block     = var.vpc_cidr_block
  subnet_cidr        = var.subnet_cidr
  gtpc_image         = var.gtpc_image
  gtpc_instance_type = var.gtpc_instance_type
  gtp_u_agent_image  = var.gtp_u_agent_image
  gtpu_instance_type = var.gtpu_instance_type
}

