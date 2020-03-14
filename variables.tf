# =============================================================================
# TERRAFORM VARIABLES
# =============================================================================

# GITLAB BASE URL
variable "gitlab_base_url" {
  description = "GitLab Base URL"
  type        = string
  default     = "https://git.stefanini.io/api/v4/"
}
