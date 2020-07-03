output "gitlab_api_url" {
  description = "Terraform output - GitLab API URL."
  value       = local.variables.gitlab_api_url
}

output "gitlab_project_name" {
  description = "Terraform output - GitLab Project name"
  value       = local.variables.gitlab_project_name
}

output "gitlab_group_name" {
  description = "Terraform output - GitLab Group name"
  value       = local.variables.gitlab_group_name
}

output "gitlab_ci_variables" {
  description = "Terraform output - all variables set in GitLab CI"
  value       = { for key, value in local.variables.gitlab_ci_variables : upper(key) => upper(value) }
}
