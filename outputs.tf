# =============================================================================
# OUTPUT TO GITLAB BASE URL
# =============================================================================

output "gitlab_base_url" {
  description = "Terraform output - GitLab base URL."
  value       = var.gitlab_base_url
}

# =============================================================================
# OUTPUT GITLAB PROJECT NAME
# =============================================================================

output "gitlab_project_name" {
  description = "Terraform output - GitLab Project name"
  value       = try("${yamldecode(file("values.yml"))["project"]}", "")
}


# =============================================================================
# OUTPUT GITLAB GROUP NAME
# =============================================================================
output "gitlab_group_name" {
  description = "Terraform output - GitLab Group name"
  value       = try("${yamldecode(file("values.yml"))["group"]}", "")
}

# =============================================================================
# OUTPUT TO ALL VARIABLES PRESENT IN VALUES.YML TO BE SET IN GITLAB CI
# =============================================================================

output "gitlab_ci_variables" {
  description = "Terraform output - all variables set in GitLab CI"
  value       = {for key, value in "${yamldecode(file("values.yml"))["envs"]}" : upper(key) => upper(value)}
}
