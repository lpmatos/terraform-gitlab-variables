resource "gitlab_group_variable" "gitlab_group" {
  count     = local.count_group
  group     = local.variables.gitlab_group_name
  key       = element(keys(local.variables.gitlab_ci_variables), count.index)
  value     = element(values(local.variables.gitlab_ci_variables), count.index)
  protected = false
}

resource "gitlab_project_variable" "gitlab_project" {
  count     = local.count_project
  project   = local.variables.gitlab_project_name
  key       = element(keys(local.variables.gitlab_ci_variables), count.index)
  value     = element(values(local.variables.gitlab_ci_variables), count.index)
  protected = false
}
