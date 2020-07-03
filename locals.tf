locals {
  variables = {
    gitlab_api_url                = var.gitlab_api_url
    token                         = try(yamldecode(file(var.values_file))["token"], "Exception")
    gitlab_project_name           = try(yamldecode(file(var.values_file))["project"], "Exception")
    gitlab_group_name             = try(yamldecode(file(var.values_file))["group"], "Exception")
    gitlab_ci_variables           = try(yamldecode(file(var.values_file))["envs"], "Exception")
    enable_gitlab_group_variables = try(yamldecode(file(var.values_file))["enable_gitlab_group_variables"], false)
  }
  count_group = local.variables.enable_gitlab_group_variables == true && local.variables.gitlab_group_name != "" && length(keys(local.variables.gitlab_ci_variables)) > 0 ? length(keys(local.variables.gitlab_ci_variables)) : 0
  count_project = local.variables.enable_gitlab_group_variables == false && local.variables.gitlab_project_name != "" && length(keys(local.variables.gitlab_ci_variables)) > 0 ? length(keys(local.variables.gitlab_ci_variables)) : 0
}
