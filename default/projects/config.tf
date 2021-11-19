#=============================#
# AWS Provider Settings       #
#=============================#
provider "aws" {
  region                  = var.region
  profile                 = var.profile
  shared_credentials_file = "~/.aws/${var.project}/config"
}

provider "gitlab" {
  token = var.gitlab_token
}

terraform {
  required_version = ">= 1.0.9"

  required_providers {
    aws    = "~> 3.0"
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "3.7.0"
    }
  }

  backend "s3" {
    key = "gitlab/projects/terraform.tfstate"
  }
}
