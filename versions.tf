terraform {
  required_version = ">= 0.12"
  experiments      = [variable_validation]
  required_providers {
    gitlab = {
      version = ">= 2.10"
    }
  }
}
