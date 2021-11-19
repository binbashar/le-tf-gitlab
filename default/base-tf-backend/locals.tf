locals {
  tags = {
    Terraform   = "true"
    Environment = "gitlab-${var.environment}"
  }
}
